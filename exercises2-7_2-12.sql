-- 2_7->>1
SELECT salesman_id, name, city, commission FROM salesman_salesman WHERE commission>0.10 AND commission<0.12;
-- 2_8->>2
SELECT * FROM orders_salesman WHERE purch_amt<200 OR NOT (ord_date>='2012-02-10' AND customer_id<3009);
-- 2_9->>3
SELECT * FROM orders_salesman WHERE NOT ((ord_date='2012-08-17' OR customer_id>3005) AND purch_amt < 1000);
-- 2_10->>4
SELECT ord_no, purch_amt, (100*purch_amt)/6000 AS 'Achieved (%)', (100*(6000-purch_amt)/6000) AS 'Unachived (%)' FROM orders_salesman WHERE (100*purch_amt)/6000 > 50;
-- 2_11->>5
SELECT * FROM emp_details WHERE emp_lname='Dosni' OR emp_lname='Mardy';
-- 2_11->>5

