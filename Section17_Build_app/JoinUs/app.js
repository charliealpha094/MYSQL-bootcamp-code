// Done by Carlos Amaral (2021/05/10)

var express = require('express');
var mysql = require('mysql');
var bodyParser = require("body-parser");
var app = express();

app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({extended: true}))
app.use(express.static(__dirname + "/public"));

var connection = mysql.createConnection ({
    host: 'localhost',
    user: 'root',
    database: 'join_us'

});

app.get("/", function(req, res){
    // Find the count of users in our DB
    var q = "SELECT COUNT(*) AS count FROM users";
    connection.query(q, function(err, results){
        if(err) throw err;
        var count = results[0].count;
        res.render("home", {data: count});
    });
});

app.post("/register", function(req, res){
    var person = {email: req.body.email};
    connection.query('INSERT INTO users SET ?', person, function(err, result){
        console.log(err);
        console.log(result);
        res.redirect("/");
    });
});




// Joke Route
app.get("/joke", function(req, res){
    var joke = "<strong>What do you call a dog who has magic tricks?</strong> <em>A labracabrador</em>";
    res.send(joke);
});

// random_num Route
app.get("/random_num", function(req, res){
    var num = Math.floor((Math.random() * 10) + 1);
    res.send("Your lucky number is " + num);
});

app.listen(8080, function(){
    console.log("App listening on port 8080!");
});
