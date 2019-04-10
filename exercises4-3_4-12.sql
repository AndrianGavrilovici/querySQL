-- 4_3->>1
SELECT COUNT(DISTINCT salesman_id) FROM orders_salesman;
-- 4_4->>2
SELECT COUNT(cust_name) FROM customers_salesman;
-- 4_5->>3
SELECT COUNT(grade) FROM customers_salesman;
-- 4_6->>4
SELECT MAX(purch_amt) FROM orders_salesman;
-- 4_7->>5
SELECT MIN(purch_amt) FROM orders_salesman;
-- 4_8->>6
SELECT city, MAX(grade) FROM customers_salesman GROUP BY city ORDER BY MAX(grade) DESC;
-- 4_9->>7
SELECT customer_id, MAX(purch_amt) FROM orders_salesman GROUP BY customer_id;
-- 4_10->>8
SELECT customer_id, ord_date, MAX(purch_amt) FROM orders_salesman GROUP BY customer_id, ord_date;
-- 4_11->>9
SELECT salesman_id, ord_date, MAX(purch_amt) FROM orders_salesman WHERE ord_date='2012-08-17' GROUP BY salesman_id, ord_date;
-- 4_12->>10
SELECT customer_id, ord_date, MAX(purch_amt) FROM orders_salesman GROUP BY customer_id, ord_date HAVING MAX(purch_amt) > 2000;