Drop DATABASE IF EXISTS bamazon_DB;

CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT,
    items_id VARCHAR(40) NOT NULL,
    product_name VARCHAR(75) NOT NULL,
    departemnt_name VARCHAR(75) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT (4),
    PRIMARY KEY(id)
);

INSERT INTO products(items_id,product_name,department_name, price,stock_quantity )
VALUES ("ST", "Samsung 75in UHD TV ", "Electronics ", 1699.98 , 45 );

INSERT INTO products(items_id,product_name,department_name, price,stock_quantity )
VALUES ("X1S ", "Xbox ONE S ", "Electronics ", 250.00 , 100 );

INSERT INTO products(items_id,product_name,department_name, price,stock_quantity )
VALUES ("HF30 ", "HydroFlask-red 30oz ","dishware",45.00,20 );

INSERT INTO products(items_id,product_name,department_name, price,stock_quantity )
VALUES ("SOD", "Standard Oak Desk ","furniture ", 349.99 ,15);

INSERT INTO products(items_id,product_name,department_name, price,stock_quantity )
VALUES ("Bl2", "brown leather Chelsea boots ", "Clothing ",175.00,32);

INSERT INTO products(items_id,product_name,department_name, price,stock_quantity )
VALUES ("QS3", "Queen size blanket-green", "Bedding",65.99,25);

INSERT INTO products(items_id,product_name,department_name, price,stock_quantity )
VALUES ("P2E", "Penzoil synthetic motor oil", "Auto ", 6.99 , 12); 

INSERT INTO products(items_id,product_name,department_name, price,stock_quantity )
VALUES ("WR3", "Womans Red dress Size S", "Clothing ", 139.99 ,8);

INSERT INTO products(items_id,product_name,department_name, price,stock_quantity )
VALUES ("BSC6", "Blue sofa couch", "Furniture", 699.99, 6);

INSERT INTO products(items_id,product_name,department_name, price,stock_quantity )
VALUES ("QSBG", "Queen size bed frame -light grey", "Bedding", 250.00, 1);