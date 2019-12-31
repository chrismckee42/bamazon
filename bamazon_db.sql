DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  item_id INT AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(100),
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INT(10) NOT NULL,
  PRIMARY KEY (item_id)
  );
  
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('Pride & Prejudice', 'Books', 9.99, 17);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('The Jungle Book', 'Books', 4.99, 49);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('Gloomhaven', 'Board Games', 99.99, 12);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('Banana', 'Food', 0.49, 138);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('Apples', 'Food', 0.99, 17);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('The Fellowship of the Rings', 'Books', 9.99, 28);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('The Fellowship of the Rings', 'Movie', 19.99, 33);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('Splendor', 'Board Games', 9.99, 22);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('Zelda: Breath of the Wild', 'Video Game', 59.99, 78);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('Super Mario Odyssey', 'Video Game', 59.99, 42);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ('Half-Life 3', 'Video Game', 59.99, 0);
  
  SELECT * from products;
  