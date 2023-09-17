const express = require("express");
const database = require('./db_con');
const pug = require("pug")
const path = require('path')

const app = express();

app.use(express.static('public'))
app.use(express.static('files'))

app.set(path.join(__dirname, './public/index.html'))
app.set('view engine', 'pug')



app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, './public/index.html'));
    
});
// const dashboardRouter = require('./routes/dashboard');
// app.use('/', dashboardRouter);

app.listen(3000, () => {
console.log(`Server is up and running on 3000 ...`);
});

