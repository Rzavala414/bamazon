Drop DATABASE IF EXISTS bamazon_DB;

CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
    items_id VARCHAR(40) NOT NULL,
    product_name VARCHAR(75) NOT NULL,
    departemnt_name VARCHAR(75) NOT NULL,
    price INT(10,2) NOT NULL,
);