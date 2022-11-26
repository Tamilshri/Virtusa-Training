SELECT name
FROM Customers;
SELECT * FROM customers;
SELECT DISTINCT name
FROM customers;
SELECT * INTO customers
FROM customers_backup;
SELECT TOP 50 * FROM customers;
SELECT TOP 50 PERCENT * FROM customers;
SELECT name AS first_name
FROM customers;
SELECT name
FROM customers
WHERE name = ‘Bob’;
SELECT name
FROM customers
WHERE name = ‘Bob’ OR age = 55;
SELECT name
FROM customers
WHERE name IN (‘Bob’, ‘Fred’, ‘Harry’);CREATE TABLE customers (
    customer_id int,
    name varchar(255),
    age int
);
CREATE VIEW [Bob Customers] AS
SELECT name, age
FROM customers
WHERE name = ‘Bob’;
ALTER TABLE customers
DROP COLUMN surname;
SELECT SUM(age)
FROM customers
SELECT COUNT(*)
FROM customers;
SELECT AVG(age)
FROM customers;
SELECT COUNT(customer_id), name
FROM customers
GROUP BY name
HAVING COUNT(customer_id) > 2;
SELECT name
FROM customers
ORDER BY age
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;
SELECT name
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;
SELECT name
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id;
SELECT name
FROM customers
WHERE EXISTS
(SELECT order FROM ORDERS WHERE customer_id = 1);
