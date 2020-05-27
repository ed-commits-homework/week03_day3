DROP TABLE IF EXISTS pizza_orders;
DROP TABLE IF EXISTS customer;


CREATE TABLE customer (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE pizza_orders (
  id SERIAL PRIMARY KEY,
  order_id INT REFERENCES customer(id), --  THIS IS A FOREIGN KEY REFERENCE. Remember this!
  topping VARCHAR(255),
  quantity INT
);

