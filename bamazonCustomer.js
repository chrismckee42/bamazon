var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "bamazon"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    showInventory()
});

function showInventory() {
    connection.query("SELECT * FROM products", function (err, res) {
        if (err) throw err;
        console.log(res);
        purchase();
    })

}

function purchase() {
    inquirer.prompt([
        {
            type: "input",
            name: "productID",
            message: "What is the ID of the product you would like to purchase?"
        },
        {
            type: "input",
            name: "quantity",
            message: "How many you would like to purchase?"
        }
    ]).then(function (ans) {
        connection.query("SELECT * FROM products WHERE item_id = ?", [ans.productID], function (err, res) {
            if (err) throw err;
            //console.log(res[0].stock_quantity);
            if (res[0].stock_quantity >= ans.quantity) {
                console.log("Okay")
                updateStock(ans.productID, ans.quantity, res[0].stock_quantity, res[0].price)
            } else {
                console.log("Not enough stock")
            }
        })
    })
}

function updateStock(id, pQuant, tQuant, price) {
    connection.query("UPDATE products SET stock_quantity = ? WHERE item_id = ?", [tQuant - pQuant, id], function (err, res) {
        if (err) throw err;
        console.log("Your total is $" + pQuant * price)
    })
}