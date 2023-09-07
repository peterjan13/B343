-- 1. Return the customerName of the customers who are from the Philippines
SELECT customerName FROM customers WHERE country = 'Philippines';

-- 2. Return the contactLastName and contactFirstName of customers with name "La Rochelle Gifts"
SELECT contactLastName, contactFirstName FROM customers WHERE customerName = 'La Rochelle Gifts';

-- 3. Return the product name and MSRP of the product named "The Titanic"
SELECT productName, MSRP FROM products WHERE productName = 'The Titanic';

-- 4. Return the first and last name of the employee whose email is "jfirrelli@classicmodelcars.com"
SELECT firstName, lastName FROM employees WHERE email = 'jfirrelli@classicmodelcars.com';

-- 5. Return the names of customers who have no registered state
SELECT customerName FROM customers WHERE state IS NULL;

-- 6. Return the first name, last name, email of the employee whose last name is Patterson and first name is Steve
SELECT firstName, lastName, email FROM employees WHERE lastName = 'Patterson';

-- 7. Return customer name, country, and credit limit of customers whose countries ar NOT USA and whose credit limits are greater than 3000
SELECT customerName, country, creditLimit FROM customers WHERE country != 'USA' AND creditLimit > 3000;

-- 8. Return the customer numbers of orders whose comments contain the string 'DHL'
SELECT customerNumber FROM orders WHERE comments LIKE '%DHL%';

-- 9. Return the product lines whose text description mentions the phrase 'state of the art'
SELECT productLine FROM productlines WHERE textDescription LIKE '%state of the art%';

-- 10. Return the countries of customers without duplication
SELECT DISTINCT country FROM customers;

-- 11. Return the statuses of orders without duplication
SELECT DISTINCT status FROM orders;

-- 12. Return the customer names  and countries of customers whose country is USA, France, or Canada
SELECT customerName, country FROM customers WHERE country IN ('USA', 'France', 'Canada');

-- 13. Return first name, last name, and office's city of employees whose offices are in Tokyo
SELECT e.firstName, e.lastName, o.city
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode
WHERE o.city = 'Tokyo';

-- 14. Return the customer names of customers who were served by the employee named "Leslie Thompson"
SELECT c.customerName
FROM customers c
INNER JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
WHERE e.firstName = 'Leslie' AND e.lastName = 'Thompson';

-- 15. Return the product names and customer name of products ordered by "Baane Mini Imports"
SELECT p.productName, c.customerName
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber
JOIN products p ON od.productCode = p.productCode
WHERE c.customerName = 'Baane Mini Imports';

-- 16. Return the employee's first names, empoyee's  last names, customer's names, and offices' countries of transactions whose customers and offices are located in the same country
SELECT e.firstName AS EmployeeFirstName, e.lastName AS EmployeeLastName, c.customerName, o.country AS OfficeCountry
FROM employees e
JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
JOIN offices o ON e.officeCode = o.officeCode
WHERE c.country = o.country;

-- 17. Return the product name and quantity in stock of products that belong to the product line "planes" with stock quantities less than 1000
SELECT p.productName, p.quantityInStock
FROM products p
JOIN productlines pl ON p.productLine = pl.productLine
WHERE pl.productLine = 'Planes' AND p.quantityInStock < 1000;

-- 18. Return the customer's name with a phone number containing "+81"
SELECT customerName
FROM customers
WHERE phone LIKE '%+81%';