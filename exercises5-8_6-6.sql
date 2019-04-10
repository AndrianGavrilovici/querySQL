-- 5_8->>1
SELECT cust_name, city, grade FROM customers_salesman ORDER BY grade DESC;
-- 5_9->>2
SELECT customer_id, COUNT(DISTINCT ord_no), MAX(purch_amt) FROM orders_salesman GROUP BY customer_id ORDER BY COUNT(DISTINCT ord_no) DESC, MAX(purch_amt) DESC;
-- 5_10->>3
SELECT ord_date, SUM(purch_amt), SUM(purch_amt)*0.15 AS Commission FROM orders_salesman GROUP BY ord_date ORDER BY ord_date;
-- 6_1->>4
SELECT customers_salesman.cust_name, salesman_salesman.name FROM customers_salesman INNER JOIN salesman_salesman ON customers_salesman.city=salesman_salesman.city;
-- SAU ->>5
SELECT customers_salesman.cust_name, salesman_salesman.name FROM customers_salesman, salesman_salesman WHERE customers_salesman.city=salesman_salesman.city;
-- 6_2->>6
SELECT customers_salesman.cust_name, salesman_salesman.name FROM customers_salesman, salesman_salesman WHERE customers_salesman.salesman_id=salesman_salesman.salesman_id;
-- 6_3->>7
SELECT orders_salesman.ord_no, orders_salesman.purch_amt, orders_salesman.ord_date, orders_salesman.customer_id, orders_salesman.salesman_id FROM orders_salesman, customers_salesman, salesman_salesman WHERE customers_salesman.city<>salesman_salesman.city AND orders_salesman.customer_id=customers_salesman.customer_id AND orders_salesman.salesman_id=salesman_salesman.salesman_id;
-- 6_4->>8
SELECT orders_salesman.ord_no, customers_salesman.cust_name FROM orders_salesman, customers_salesman WHERE orders_salesman.customer_id=customers_salesman.customer_id;-- 6_5->>9
SELECT customers_salesman.cust_name, customers_salesman.grade FROM customers_salesman, orders_salesman, salesman_salesman WHERE orders_salesman.customer_id=customers_salesman.customer_id AND orders_salesman.salesman_id=salesman_salesman.salesman_id AND customers_salesman.cust_name IS NOT NULL AND customers_salesman.grade IS NOT NULL;
-- 6_6->>10
SELECT customers_salesman.cust_name, customers_salesman.city, salesman_salesman.name, salesman_salesman.commission FROM customers_salesman, salesman_salesman WHERE customers_salesman.salesman_id=salesman_salesman.salesman_id AND 
salesman_salesman.commission BETWEEN 0.12 AND 0.14;