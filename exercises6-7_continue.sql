-- 6_7->>1
SELECT ord_no, cust_name, commission AS "Commission%",
purch_amt*commission AS "Commission"
FROM salesman_salesman,orders_salesman,customers_salesman
WHERE orders_salesman.customer_id = customers_salesman.customer_id
AND orders_salesman.salesman_id = salesman_salesman.salesman_id
AND customers_salesman.grade>=200;
-- 7_1->>2

