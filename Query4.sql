Select * From Customers Where CustomerName LIKE '_ra%';/*1*/
Select CustomerID, CustomerName From Customers Where CustomerName LIKE 'a_%_%';/*2*/
Select CustomerID, CustomerName From Customers Where CustomerName NOT LIKE '%a%';/*3*/
Select CustomerID, CustomerName From Customers Where CustomerName LIKE 'h%s';/*4*/
Select CustomerID, CustomerName, City From Customers Where City LIKE 'ber%';/*5*/
Select CustomerID, CustomerName, City From Customers Where City LIKE '_ondon';/*6*/
Select * From Customers Where Country IN ('Germany', 'France', 'Republica Moldova', 'UK') ;/*7*/
Select * From Customers Where ContactName IN (Select StudentName From Students);/*8*/
Select * From Products Where Price BETWEEN 10 And 20;/*9*/
Select * From Products Where Price NOT BETWEEN 10 And 20;/*10*/