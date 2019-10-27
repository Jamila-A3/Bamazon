DROP DATABASE IF EXISTS bamazonDB;

CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(150) NOT NULL,
  department_name VARCHAR(75) NOT NULL,
  price DECIMAL(10,2),
  stock_quantity INT,
  PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("smartphone", "Electronics", 300.25, 55),
      ("vase", "Home", 56.36, 24),
      ("shirt", "Clothe", 12.78, 72),
      ("flips", "Shoes", 23.99, 23),
      ("flower", "Grocery", 24.85, 5),
      ("book", "Books", 7.46, 7),
      ("bag", "Handbags", 56.79, 31),
      ("Macbook", "Computers", 999.99, 4),
      ("lipstick", "Beauty", 42.64, 175),
      ("Mando", "Grocery", .99, 300);
