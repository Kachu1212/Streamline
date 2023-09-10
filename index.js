const express = require("express");
const database = require('./db_con');
const pug = require("pug")
const path = require('path')

const app = express();

app.set(path.join(__dirname, './public/index.html'))
app.set('view engine', 'pug')


app.get('/', (req, res) => {
    res.sendFile(path.join(_dirname, './public/index.htnl'));
});
// const dashboardRouter = require('./routes/dashboard');
// app.use('/', dashboardRouter);

app.listen(3000, () => {
console.log(`Server is up and running on 3000 ...`);
});

