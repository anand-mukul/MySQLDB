
# MySQL InventoryDB Project

This project involves setting up a MySQL database named `inventoryDB` and performing basic SQL operations. The `products` table is created within this database to manage product information. This guide will help you set up the environment, create the database, and execute SQL queries.

## Prerequisites

- **MySQL Workbench**: Download and install MySQL Workbench from [here](https://dev.mysql.com/downloads/file/?id=525959).
- **MySQL Server**: Ensure MySQL server is installed and running on your system.

## Setup Instructions

### 1. Download and Install MySQL Workbench

- Go to the MySQL Workbench [download page](https://dev.mysql.com/downloads/file/?id=525959).
- Choose the appropriate version for your operating system and follow the installation instructions.

### 2. Verify MySQL Installation

- Open the **Windows Command Prompt**.
- Run the following command to check if MySQL is installed:
  ```bash
  mysql --version
  ```
- If you encounter an error, add the MySQL bin directory to your system's PATH variable:
  1. Right Click on **This PC** or **My Computer**.
  2. Go to **Properties**.
  3. Go to **Advanced System Settings**.
  4. Click on **Environment Variables**.
  5. Under **System Variables**, find the `Path` variable and edit it.
  6. Add the MySQL bin directory (e.g., `C:\Program Files\MySQL\MySQL Server <version>\bin`) to the path.

### 3. Run the MySQL Server

- Start the MySQL server by opening the **Windows Command Prompt** and running:
  ```bash
  mysql -u root -p
  ```
- Enter your MySQL root password when prompted.

### 4. Create and Setup the Database

- In the MySQL command line, create the database and the `products` table:
  ```sql
  CREATE DATABASE inventoryDB;
  USE inventoryDB;

  CREATE TABLE products (
      id INT AUTO_INCREMENT PRIMARY KEY,
      name VARCHAR(100),
      description TEXT,
      price DECIMAL(10, 2),
      quantity INT,
      category VARCHAR(50)
  );
  ```

### 5. Insert Sample Data into `products` Table

- Insert sample product records:
  ```sql
  INSERT INTO products (name, description, price, quantity, category)
  VALUES 
  ('Laptop', '14 inch laptop with 8GB RAM', 799.99, 10, 'Electronics'),
  ('Desk Chair', 'Ergonomic desk chair', 150.00, 25, 'Furniture'),
  ('Notebook', 'A5 notebook with lined pages', 5.99, 200, 'Stationery'),
  ('Wireless Mouse', 'Bluetooth wireless mouse', 25.49, 50, 'Electronics'),
  ('Coffee Mug', 'Ceramic mug with 300ml capacity', 12.99, 75, 'Kitchenware');
  ```

### 6. Perform SQL Queries

- Retrieve all products:
  ```sql
  SELECT * FROM products;
  ```

- Retrieve products with a price less than a specified amount (e.g., less than $30):
  ```sql
  SELECT * FROM products WHERE price < 30.00;
  ```

- Retrieve products with more than a specified quantity in stock (e.g., more than 20 units):
  ```sql
  SELECT * FROM products WHERE quantity > 20;
  ```

- Update the price of a specific product (e.g., change the price of the 'Wireless Mouse' to $27.99):
  ```sql
  UPDATE products SET price = 27.99 WHERE name = 'Wireless Mouse';
  ```

- Delete a product from the `products` table (e.g., remove the 'Coffee Mug'):
  ```sql
  DELETE FROM products WHERE name = 'Coffee Mug';
  ```

## Execution Proofs

Below are screenshots showing the successful execution of the above commands:

1. **Creating the Database and Table, and Inserting Data:**

   ![Creating Database and Table](/assets/Adding%20the%20table.png)

2. **Performing Operations:**

   ![Performing Operations](/assets/after-operations.png)

3. **Reviewing Data After Operations:**

   ![Reviewing Data](/assets/the-tables.png)

## Conclusion

This project demonstrates how to set up a MySQL database and perform basic CRUD (Create, Read, Update, Delete) operations. Follow the steps carefully to successfully set up and manage your `inventoryDB`.
