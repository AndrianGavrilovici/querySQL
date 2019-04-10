-- 3_15->>1
SELECT * FROM testtable WHERE col1 NOT LIKE '%/%';
-- 3_16->>2
SELECT * FROM testtable WHERE col1 LIKE '%/_//%' ESCAPE '/';
-- 3_17->>3
SELECT * FROM testtable WHERE col1 NOT LIKE '%/_//%' ESCAPE '/';
-- 3_18->>4
SELECT * FROM testtable WHERE col1 LIKE '%/%%' ESCAPE '/';
-- 3_19->>5
SELECT * FROM testtable WHERE col1 NOT LIKE '%/%%' ESCAPE '/';
-- 3_20->>6
SELECT * FROM customers_salesman WHERE grade IS NULL;
-- 3_21->>7
SELECT * FROM customers_salesman WHERE grade IS NOT NULL;
-- 3_22->>8
SELECT * FROM emp_details WHERE emp_lname LIKE 'D%';
-- 4_1->>9
SELECT SUM(purch_amt) FROM orders_salesman;
-- 4_2->>10
SELECT AVG(purch_amt) FROM orders_salesman;

