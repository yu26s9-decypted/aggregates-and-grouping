use northwind;

-- 1. How many suppliers are there? Use a query!
SELECT * FROM suppliers;
-- There are 29 suppliers.

-- 2. What is the sum of all the employee's salaries?

SELECT SUM(Salary) FROM employees;

-- 3. What is the price of the cheapest item that Northwind sells?

SELECT productname, unitprice FROM products
ORDER BY unitprice ASC
LIMIT 1;
-- 4. What is the average price of items that Northwind sells?
SELECT AVG(unitprice) FROM products;
-- 5. What is the price of the most expensive item that Northwind sells?
SELECT MAX(unitprice) FROM products;
-- 6. What is the supplier ID of each supplier and the number of items they supply?
-- You can answer this query by only looking at the Products table.
SELECT supplierid, quantityperunit FROM products;
-- 7. What is the category ID of each category and the average price of each item in the
-- category? You can answer this query by only looking at the Products table.

SELECT categoryid, AVG(unitprice) FROM products
GROUP BY categoryid;
-- 8. For suppliers that provide at least 5 items to Northwind, what is the supplier ID of
-- each supplier and the number of items they supply? You can answer this query
-- by only looking at the Products table.
-- 9. List the product id, product name, and inventory value (unit price * units on
-- hand). Sort the results in descending order by value. If two or more have the
-- same value, order by product name.
