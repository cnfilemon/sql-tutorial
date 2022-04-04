-- CREATE DATABASE online_shop;

DROP TABLE products;

CREATE TABLE products (
  name VARCHAR(200),
  price NUMERIC(10,2),
  description TEXT,
  amount_in_stock SMALLINT,
  image_path VARCHAR(500)
);

INSERT INTO products (name, price, description, amount_in_stock, image_path)
VALUES ('Item 1', 100.01, 'An item', 1, 'https://www.google.com');

ALTER TABLE products
ALTER COLUMN name SET NOT NULL,
ALTER COLUMN price SET NOT NULL,
ALTER COLUMN description SET NOT NULL,
ADD CONSTRAINT price_positive CHECK (price > 0),
ADD CONSTRAINT amount_in_stock_positive CHECK (amount_in_stock >= 0);

ALTER TABLE products
ADD COLUMN id SERIAL PRIMARY KEY;