Select COUNT(ProductID) From Products;/*1*/
Select COUNT(PostalCode) From Customers;/*2*/
Select COUNT(ContactName) From Customers;/*3*/
Select COUNT(CustomerName) From Customers Where Country='Republica Moldova';/*4*/
Select CustomerName From Customers Where Country='Republica Moldova';/*5*/
Select AVG(ProductID) From Products Where ProductID <= 5;/*6*/
Select SUM(Price) From Products Where ProductID <= 7;/*7*/
Select * From Customers Where CustomerName LIKE 'a%';/*8*/
Select * From Customers Where ContactName Like '%a';/*9*/
Select * From Customers Where CustomerName Like '%and%';/*10*/
