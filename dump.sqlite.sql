-- TABLE
CREATE TABLE customer (
  id INT NOT NULL,
  first_name STRING,
  last_name STRING,
  address STRING,
  PRIMARY KEY (id)
  );
CREATE TABLE myProducts (
  id INT,
  name STRING,
  price MONEY, stocks INT,
  PRIMARY KEY (id)
  );
CREATE TABLE newProduct (
  id INT NOT NULL,
  name STRING,
  price MONEY,
  stocks INT,
  PRIMARY KEY (id)
  );
CREATE TABLE orders (
  id INT NOT NULL,
  order_number INT,
  customer_id INT,
  product_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (customer_id) REFERENCES customer(id),
  FOREIGN KEY (product_id) REFERENCES myProducts(id)
  
  );
CREATE TABLE orderss (
  id INT NOT NULL,
  order_number INT,
  customer_id INT,
  product_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (customer_id) REFERENCES customer(id),
  FOREIGN KEY (product_id) REFERENCES newProduct(id)
  
  );
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
