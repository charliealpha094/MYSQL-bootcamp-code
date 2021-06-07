// Done by Carlos Amaral (2021/05/04)

var faker = require('faker');
var mysql = require('mysql');

var connection = mysql.createConnection ({
    host: 'localhost',
    user: 'root',
    database: 'join_us'
});

// Count number of users in the database
var q = 'SELECT COUNT(*) AS total FROM users';

connection.query(q, function(error, results, fields) {
    if (error) throw error;
    console.log(results[0].total);
});

connection.end();
