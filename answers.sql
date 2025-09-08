USE salesdb;
-- Question 1 
-- Getting employee details with their office code
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o
  ON e.officeCode = o.officeCode;
-- Question 2 
-- Getting product details along with the product line
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl
  ON p.productLine = pl.productLine;
-- Question 3 
-- Get first 10 orders with customer info
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o
  ON c.customerNumber = o.customerNumber
LIMIT 10;
