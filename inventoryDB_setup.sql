-- Download MySQL Workbench and install it
-- https://dev.mysql.com/downloads/file/?id=525959
-- Complete the MySQL Workbench setup

-- Open Windows Command Prompt
-- Run "mysql --version"
-- If error occurs, then configure the mySql path in Advanced System Settings > Environment Variables > System Variables > Path | Add "c:\program files\mysql(version)\bin" to the path

-- Run the Server
-- mysql -u root -p
-- Enter the password ****

-- Connect to MySQL and create the database
CREATE DATABASE inventoryDB;
USE inventoryDB;

-- Create the products table
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
    quantity INT,
    category VARCHAR(50)
);

-- Insert sample product records
INSERT INTO products (name, description, price, quantity, category)
VALUES ('Laptop', '14 inch laptop with 8GB RAM', 799.99, 10, 'Electronics'),
       ('Desk Chair', 'Ergonomic desk chair', 150.00, 25, 'Furniture'),
       ('Notebook', 'A5 notebook with lined pages', 5.99, 200, 'Stationery'),
       ('Wireless Mouse', 'Bluetooth wireless mouse', 25.49, 50, 'Electronics'),
       ('Coffee Mug', 'Ceramic mug with 300ml capacity', 12.99, 75, 'Kitchenware');

-- Retrieve all products
SELECT * FROM products;

-- Retrieve products with a price less than a specified amount
SELECT * FROM products WHERE price < 30.00;

-- Retrieve products with more than a specified quantity in stock
SELECT * FROM products WHERE quantity > 20;

-- Update the price of a specific product
UPDATE products SET price = 27.99 WHERE name = 'Wireless Mouse';

-- Delete a product from the products table
DELETE FROM products WHERE name = 'Coffee Mug';
