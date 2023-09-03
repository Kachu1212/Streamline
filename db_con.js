const mysql = require("mysql");

const db_con = mysql.createConnection({
	host: "localhost",
	user: "root",
	password: ''
});

db_con.connect(function(err){
	if (err)
		throw err;
	console.log("Database Connection Successful...");
	
});

module.exports = db_con;

