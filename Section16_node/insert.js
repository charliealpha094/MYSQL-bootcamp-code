// Done by Carlos Amaral (2021/05/05)

var faker = require('faker');
var mysql = require('mysql');

var connection = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    database : 'join_us'
});

// Insert Data
//var q = 'INSERT INTO users (email) VALUES ("rusty_the_dog@gmail.com")';

//connection.query(q, function (error, results, fields) {
//    if (error) throw error;
//    console.log(results);
//});


// Dynamic Data
var person = {
    email: faker.internet.email(),
    created_at: faker.date.past()
};

var end_result = connection.query('INSERT INTO users SET ?', person, function(err, result) {
    if (err) throw err;
    console.log(result);

});

connection.end();




