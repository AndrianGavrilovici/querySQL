-- 3_5->>1
SELECT * FROM salesman_salesman WHERE commission BETWEEN 0.12 AND 0.14;
-- 3_6->>2
SELECT * FROM orders_salesman WHERE (purch_amt BETWEEN 500 AND 4000) AND NOT purch_amt=948.50 AND NOT purch_amt=1983.43;
-- 3_7->>3
SELECT * FROM salesman_salesman WHERE name BETWEEN 'A' AND 'K';
-- 3_8->>4
SELECT * FROM salesman_salesman WHERE name NOT BETWEEN 'A' AND 'L';
-- 3_9->>5
SELECT * FROM customers_salesman WHERE cust_name LIKE 'B%';
-- 3_10->>6
SELECT * FROM customers_salesman WHERE cust_name LIKE '%n';
-- 3_11->>7
SELECT * FROM salesman_salesman WHERE name LIKE 'N__l%';
-- 3_12->>8
