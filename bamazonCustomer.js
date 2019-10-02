var inquirer = require("inquirer");
var mysql   = require("sql");

inquirer
  .prompt([
    {
        type:"input",
        name:"product ID",
        message:"What is the id for the product that you'd like to purchase?"
    },
    {
        type:"input",
        name:"product quantity",
        message:"whats the quantity that you'd like to purchase?"
    }
  ])
  .then( { });