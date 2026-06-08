use ECommerceDB;

-- 1. Display unique product names from the Product table

SELECT * FROM Product;
SELECT DISTINCT product_name
FROM Product;

-- 2. Display product names with alias Product_Name

SELECT product_name AS Product_Name
FROM Product;

-- 3. Display unique product_id values from the Sales table

SELECT * FROM Sales;
SELECT DISTINCT product_id
FROM Sales;


-- 4. Display product price with alias Product_Price

SELECT * FROM Product;
SELECT price AS Product_Price
FROM Product;

-- 5.Display products whose price is greater than 10,000.

SELECT * FROM Product;
SELECT Product_name FROM Product WHERE Price > '10000';

-- 6.Show products whose price is less than 5,000.

SELECT * FROM Product;
SELECT product_name FROM Product WHERE PRICE < '5000';

-- 7.Display sales where quantity equals 2.

SELECT * FROM Sales;
SELECT Sale_amount FROM sales WHERE quantity = 2 ;

-- 8.Display products whose price is greater than or equal to 15,000.

SELECT * FROM Product;
SELECT product_name FROM product WHERE Price >= '15000';

-- 9.Display sales where quantity is not equal to 5.

SELECT * FROM Sales;
SELECT Sale_amount FROM Sales WHERE quantity != 5 ;  -- or <>

-- Arithmetic Operators
-- 10.Display product name and price after 10% increase.

SELECT * FROM Product;
SELECT product_name,price+(price*0.1) AS new_price FROM Product; -- or price*1.1

-- 11.Display sale amount and sale amount after adding 500.

SELECT * FROM sales;
SELECT sale_amount,sale_amount+500 AS newsale_amount FROM sales;

-- Logical Operators
-- 12.Display products whose price is greater than 5,000 AND less than 50,000.

SELECT * FROM product;
SELECT *
FROM Product
WHERE price > 5000 AND price < 50000;

-- 13.Display sales where quantity is 2 OR 4.

SELECT * FROM sales WHERE quantity = 2 OR quantity= 4;

-- 14.Display products whose price is NOT greater than 20,000.

SELECT * FROM product WHERE NOT Price > 20000;

-- IS NULL / IS NOT NULL
-- 15.Display sales records where product_id is NULL.

SELECT * FROM sales WHERE product_id = NULL;

-- 16.Display products where price is NOT NULL.

SELECT * FROM Product WHERE price IS NOT NULL;

-- IN and NOT IN
-- 17.Display products with product_id 1, 3, and 5.

SELECT Product_name FROM Product WHERE Product_id IN(1,3,5); 
-- or 

SELECT *
FROM Product
WHERE product_id IN (1,3,5);


-- 18.Display products whose product_id is NOT 2, 4, and 6.

SELECT Product_name FROM product WHERE Product_id NOT IN (2,4,6);
-- Or
SELECT * FROM product WHERE Product_id NOT IN (2,4,6);

-- BETWEEN and NOT BETWEEN
-- 19.Display products whose price is between 1,000 and 20,000.

SELECT Product_name , price FROM product WHERE Price BETWEEN 1000 AND 20000;
-- or
SELECT *
FROM Product
WHERE price BETWEEN 1000 AND 20000;

-- 20.Display products whose price is NOT between 5,000 and 50,000.

SELECT * FROM product WHERE price NOT BETWEEN 5000 AND 50000;
-- OR
SELECT Product_name,price FROM product WHERE price NOT BETWEEN 5000 AND 50000;

-- LIKE and NOT LIKE
-- 21.	Display products whose name starts with 'M'.

SELECT * FROM Product WHERE Product_name LIKE 'M%';

-- 22.	Display products whose name ends with 'e'.

SELECT * FROM Product WHERE product_name LIKE "%M";

-- 23.	Display products whose name contains 'phone'.

SELECT * FROM product WHERE product_name LIKE '%PHONE%';

-- 24.Display products whose name does not start with 'S'.

SELECT * FROM product WHERE product_name NOT LIKE 'S%';

-- Mixed Questions (Exam Level)
-- 25.Display products whose price is between 1,000 and 20,000 AND product name starts with 'M'.

SELECT * FROM product WHERE Price BETWEEN 1000 AND 20000 AND Product_name LIKE 'M%';

-- 26.Display sales where quantity is between 2 and 10.

SELECT * FROM sales WHERE quantity BETWEEN 2 AND 10;

-- 27.Display products whose product_id is in (1,2,3) AND price greater than 5,000.

SELECT * FROM Product WHERE Product_id  IN (1,2,3) AND price > 5000;

-- 28.Display unique sale quantities from the Sales table.

SELECT  DISTINCT quantity FROM sales;