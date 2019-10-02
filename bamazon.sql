Drop DATABASE IF EXISTS bamazon_DB;

CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT
    items_id VARCHAR(40) NOT NULL,
    product_name VARCHAR(75) NOT NULL,
    departemnt_name VARCHAR(75) NOT NULL,
    price INT(10,2) NOT NULL,
    stock_quantity INT (4)
    PRIMARY KEY(id)
);

INSERT INTO products(items_id,product_name,deparment_name, price,stock_quantity )
VALUES (" ", "Samsung 75in UHD TV ", "Electronics ", 1699.98 , 45 );

INSERT INTO products(items_id,product_name,deparment_name, price,stock_quantity )
VALUES (" ", "Xbox ONE S ", "Electronics ", 250.00 , 100 );

INSERT INTO products(items_id,product_name,deparment_name, price,stock_quantity )
VALUES (" ", "HydroFlask-red 30oz ","dishware",45.00,20 );

INSERT INTO products(items_id,product_name,deparment_name, price,stock_quantity )
VALUES (" ", "Standard Oak Desk ","furniture ", 349.99 ,15);

INSERT INTO products(items_id,product_name,deparment_name, price,stock_quantity )
VALUES (" ", "brown leather Chelsea boots ", "Clothing ",175.00,32);

INSERT INTO products(items_id,product_name,deparment_name, price,stock_quantity )
VALUES (" ", "Queen size blanket-green", "Bedding",65.99, );

INSERT INTO products(items_id,product_name,deparment_name, price,stock_quantity )
VALUES (" ", "Penzoil synthetic motor oil", "Auto ", 6.99 , 12); 

INSERT INTO products(items_id,product_name,deparment_name, price,stock_quantity )
VALUES (" ", "Womans Red dress Size S", "Clothing ", 139.99 ,8);

INSERT INTO products(items_id,product_name,deparment_name, price,stock_quantity )
VALUES (" ", "Blue sofa couch", "Furniture", 699.99, 6);

INSERT INTO products(items_id,product_name,deparment_name, price,stock_quantity )
VALUES (" ", "Queen size bed frame -light grey", "Bedding", 250.00, 1);