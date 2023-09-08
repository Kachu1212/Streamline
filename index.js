const express = require("express");
const database = require('./db_con');
let pug = require("pug")
let path = require('path')

const app = express();

app.set(path.join(__dirname, './views'))
app.set('view engine', 'pug')


app.get('/', (req, res) => res.render('home'))

const dashboardRouter = require('./routes/dashboard');

app.use('/', dashboardRouter);


app.listen(3000, () => {
console.log(`Server is up and running on 3000 ...`);
});

