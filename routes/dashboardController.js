const express = require('express');

const dashboardRouter = express.Router();

const {
    simulatePaid
} = require('../controllers/dashboard');

dashboardRouter.post('/buy', simulatePaid);

module.exports = dashboardRouter;
