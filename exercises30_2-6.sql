-- 30->>1
SELECT pro_name, pro_price FROM item_mast WHERE pro_price=(SELECT MIN(pro_price) FROM item_mast);
-- 31->>2
SELECT DISTINCT emp_lname FROM emp_details;
-- 32->>3
SELECT * FROM emp_details WHERE emp_lname='Snares';
-- 33->>4
SELECT * FROM emp_details WHERE emp_dept=57;
-- 2_1->>5
SELECT cust_name FROM customers_salesman WHERE grade > 100;
-- 2_2->>6
SELECT * FROM customers_salesman WHERE city='New York' AND grade > 100;
-- 2_3->>7
SELECT * FROM customers_salesman WHERE city='New York'
UNION
SELECT * FROM customers_salesman WHERE grade > 100;
-- 2_4->>8
SELECT * FROM customers_salesman WHERE city='New York' OR NOT grade > 100;
-- 2_5->>9
SELECT * FROM customers_salesman WHERE NOT (city='New York' OR grade > 100);
-- 2_6->>10
SELECT * FROM orders_salesman WHERE NOT ((ord_date='2012-09-10' AND salesman_id>505) OR purch_amt>1000);
