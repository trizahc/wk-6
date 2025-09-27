-- answers.sql
-- Assignment: SQL JOIN Queries
-- Student: Trizah Chepkirui

------------------------------------------------------
-- Question 1: INNER JOIN employees with offices
------------------------------------------------------
-- Retrieve employee details along with their officeCode information
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees AS e
INNER JOIN offices AS o
ON e.officeCode = o.officeCode;

------------------------------------------------------
-- Question 2: LEFT JOIN products with productlines
------------------------------------------------------
-- Retrieve product details along with product line information
SELECT p.productName, p.productVendor, p.productLine
FROM products AS p
LEFT JOIN productlines AS pl
ON p.productLine = pl.productLine;

------------------------------------------------------
-- Question 3: RIGHT JOIN customers with orders (first 10 orders)
------------------------------------------------------
-- Retrieve order details including customer number
SELECT o.orderDate, o.shippedDate, o.status, c.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customerNumber = o.customerNumber
LIMIT 10;
