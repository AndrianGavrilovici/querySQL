-- 1
SELECT * FROM salesman_salesman;
-- 2
SELECT "This is SQL Exercise, Practice and Solution" AS Column1;
-- 3
SELECT 1 AS Column1, 2 AS Column2, 3 AS Column3;
-- 4
SELECT 10+15 AS SUM;
-- 5
SELECT (10+15-15)*2;
-- 6
SELECT name, commission FROM salesman_salesman;
-- 7
SELECT ord_date, salesman_id, ord_no, purch_amt FROM orders_salesman;
-- 8
SELECT DISTINCT salesman_id FROM orders_salesman ORDER BY salesman_id;
-- 9
SELECT name, city FROM salesman_salesman WHERE city='Paris';
-- 10
SELECT * FROM customers_salesman WHERE grade=200;
