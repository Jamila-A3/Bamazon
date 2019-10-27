const mysql = require("mysql");
const inquirer = require("inquirer");

const connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "fl002211",
  database: "bamazonDB"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("mySql connected... " + connection.threadId);
  // connection.end();
});

function customer () {
  connection.query("SELECT * FROM products", function(err, res) {
    if(err) throw err;
    console.log(res);
  }) 
}
 
customer();

function client () {
  connection.query("SELECT * FROM products", function(err, res) {
    if(err) throw err;

    inquirer
    .prompt([
      {
        name: "product",
        type: "number",
        message: "What you want to buy?"
      },
      {
        name: "quantity",
        type: "number",
        message: "How many would you like?"
      }
    ])
    .then (function(results) {
      console.log(results);
      
      connection.end();
    })
  });
}

client();