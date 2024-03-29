
var util        = require('../lib/util');
var response    = require('../lib/response');
var dbHandler   = require('../lib/databaseHandler').dbHandler;

exports.validateLogin = function () {
    return function (req, res, next) {
        var sessionId   = req.headers.session_id;
        var userId      = req.headers.user_id;

        if (util.checkBlank([sessionId, userId])) {
            return response.parameterMissing({}, res);
        }

        if (util.specialCharacterCheck(sessionId + userId)) {
            return response.specialCharacterFound({}, res);
        }

        /**
         * if verified then add the user values in request object to get in the
         * actual function : res.locals.user = userinfo from database
         * perform join, and send the user data to final controller only
         * when verified
         */

        var sql = 'SELECT * FROM users WHERE ' +
                'username = ?';

        var sqlQuery = dbHandler.getInstance().executeQuery(sql, [userId], function (err, userInfo) {
            if (err || !userInfo.length) {
                return response.userNotFound({}, res);
            }
            else {
                if(userInfo[0].auth_token !== sessionId){
                    return response.invalidAccessToken({}, res);
                }
                res.locals.userInfo = userInfo[0];
                next();
            }
        });
    }
};
