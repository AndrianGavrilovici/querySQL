Select * From Products Where (Price BETWEEN 10 And 20) And NOT CategoryID IN (1, 2, 3);/*1*/
Select * From Products Where ProductName BETWEEN 'Carnarvon Tigers' And 'Gula Malacca' ORDER BY ProductName;/*2*/
Select * From Orders Where OrderDate BETWEEN '2018-06-13' And '2019-02-16' ORDER BY ShipperID;/*3*/
Select CustomerID AS ID, CustomerName AS NUME From Customers;/*4*/
Select CustomerName AS 'Name', ContactName AS 'Contact Person' From Customers;/*5*/
Select CustomerName, CONCAT (Address, ', ', PostalCode, ' ', City, ', ', Country) AS Address From Customers;/*6*/
Select o.OrderID, o.OrderDate, c.CustomerName From Customers AS c, Orders AS o Where c.CustomerID = o.CustomerID;/*7*/
/*este la fel, numai ca randu 7 folosim pseudonime iar in randul 9 fara pseudonime...*/
Select Orders.OrderID, Orders.OrderDate, Customers.CustomerName From Customers, Orders Where Customers.CustomerID = Orders.CustomerID;/*8*/
Select Orders.OrderID, Customers.CustomerName, Orders.OrderDate From Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;/*9*/
Select Customers.CustomerName, Orders.OrderDate From Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;/*10*/