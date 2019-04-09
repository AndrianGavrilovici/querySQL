Select * From Customers Where CustomerID > 39;/*1*/
Select * From Customers Where PostalCode IS NULL;/*2*/
UPDATE Customers SET City = 'Berlin', Country = 'Germany' Where CustomerID = 42;
UPDATE Customers SET CustomerName = 'Sandulesco Vasile', ContactName = 'Vasile', Address = 'Str. V. Alexandri' Where CustomerID = 43;
DELETE From Customers Where CustomerID > 43 And CustomerID < 50;
SELECT * FROM Customers WHERE CustomerID > 38;/*3*/
Select * From Customers LIMIT 9;/*4*/
Select * From Customers LIMIT 4, 9;/*5*/
Select * From Customers Where Country='Germany' LIMIT 4;/*6*/

Select * From Products;/*7*/
Select MIN(Price) AS SmallestPrice From Products ;/*8*/
Select MAX(Price) AS largestPrice From Products ;/*9*/
Select MAX(Price) AS largestPrice From Products Where ProductID >= 5 And ProductID <=10;/*10*/
