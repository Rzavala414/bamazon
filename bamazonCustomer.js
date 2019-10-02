var inquirer = require("inquirer");
var mysql = require("mysql");

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'password',
  database: 'bamazon_db'
});

connection.connect();
connection.query("SELECT * FROM products", function (err, result) {
  console.table(result);
  inquirer
    .prompt([
      {
        type: "input",
        name: "productID",
        message: "What is the id for the product that you'd like to purchase?"
      },
      {
        type: "input",
        name: "quantity",
        message: "whats the quantity that you'd like to purchase?"
      }
    ])
    .then(function (answers) {
      console.log(answers)
      connection.query(`SELECT * FROM products WHERE items_id=?`, [answers.productID], function (error, results) {
        if (error) throw error;
        console.log('The solution is: ', results[0].stock_quantity);

        if (parseInt(answers.quantity) <= parseInt(results[0].stock_quantity)) {
          console.log("Enough in stock placing order")
          //update database
          var newQuantity = parseInt(results[0].stock_quantity) - parseInt(answers.quantity);
          console.log(newQuantity);
          connection.query(
            "UPDATE products SET ? WHERE ?",
            [
              {
                stock_quantity: newQuantity
              },
              {
                items_id: answers.productID
              }
            ],
            function (error) {
              if (error) throw err;
              console.log("Bid placed successfully!");
              // start();
              connection.query("SELECT * FROM products", function (err, result) {
                console.table(result);
              })
            })
        } else {
          console.log("over quantity value")
        }
      });
    }
    );
})

  //TODO:Check if theres enough of the product in stock to place the order for the customer

  //TODO:if there isn't enough of the product tell the customer 'insufficient quantity' and prevent the order from happening

  //TODO:if there is enough product in stock place the order for the customer and update the quantity of the product 

  //TODO:show the total cost of their order to the customer
