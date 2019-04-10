-- 4_23->>1
SELECT pro_com, AVG(pro_price) FROM item_mast GROUP BY pro_com;
-- 4_24->>2
SELECT SUM(dpt_allotment) FROM emp_department;
-- 4_25->>3
SELECT emp_dept, COUNT(*) FROM emp_details GROUP BY emp_dept;
-- 5_1->>4
SELECT salesman_id, name, city, commission*100 AS Commission, '%' FROM salesman_salesman;
-- 5_2->>5
SELECT 'For', ord_date, 'there are', COUNT(DISTINCT ord_no), 'orders' FROM orders_salesman GROUP BY ord_date;
-- 5_3->>6
SELECT * FROM orders_salesman ORDER BY ord_no;
-- 5_4->>7
SELECT * FROM orders_salesman ORDER BY ord_date DESC;
-- 5_5->>8
SELECT * FROM orders_salesman ORDER BY ord_date, purch_amt DESC;
-- 5_6->>9
SELECT cust_name, city, grade, customer_id, salesman_id FROM customers_salesman ORDER BY customer_id;
-- 5_7->>10
SELECT salesman_id, ord_date, MAX(purch_amt) FROM orders_salesman GROUP BY salesman_id, ord_date ORDER BY salesman_id, ord_date;
