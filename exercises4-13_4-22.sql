-- 4_13->>1
SELECT customer_id, ord_date, MAX(purch_amt) FROM orders_salesman GROUP BY customer_id, ord_date HAVING MAX(purch_amt) BETWEEN 2000 AND 6000;
-- 4_14->>2
SELECT customer_id, ord_date, MAX(purch_amt) FROM orders_salesman GROUP BY customer_id, ord_date HAVING MAX(purch_amt) IN (2000,3000, 5760, 6000);
-- 4_15->>3
SELECT customer_id, MAX(purch_amt) FROM orders_salesman WHERE customer_id BETWEEN 3002 AND 3007 GROUP BY customer_id;
-- 4_16->>4
SELECT customer_id, MAX(purch_amt) FROM orders_salesman GROUP BY customer_id HAVING customer_id BETWEEN 3002 AND 3007 AND MAX(purch_amt)>1000;
-- 4_17->>5
SELECT salesman_id, MAX(purch_amt) FROM orders_salesman GROUP BY salesman_id HAVING salesman_id BETWEEN 5003 AND 5008;
-- 4_18->>6
SELECT COUNT(ord_date) FROM orders_salesman WHERE ord_date='2012-08-17';
-- 4_19->>7
SELECT COUNT(salesman_id) FROM salesman_salesman WHERE city IS NOT NULL;
-- 4_20->>8
SELECT salesman_id, ord_date, COUNT(salesman_id) FROM orders_salesman GROUP BY salesman_id, ord_date;
-- 4_21->>9
SELECT AVG(pro_price) FROM item_mast;
-- 4_22->>10
SELECT COUNT(pro_price) AS 'Number of Products' FROM item_mast WHERE pro_price>=350;