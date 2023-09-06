const mysql = require('mysql2');

// Create a MySQL pool connection
const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'streamline'
});

// Test the database connection
db.getConnection((err, connection) => {
    if (err) {
        console.error('Error connecting to MySQL:', err);
    } else {
        console.log('Connected to MySQL database');
        connection.release();
    }
});

module.exports = db.promise();
