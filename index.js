const express = require("express");
const database = require('./db_con');

const app = express();

app.listen(3000, () => {
console.log(`Server is up and running on 3000 ...`);
});

