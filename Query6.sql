Select Customers.CustomerName, Orders.OrderDate, Students.StudentLastName From ((Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID)INNER JOIN Students ON Customers.ContactName=Students.StudentName);/*1*/

Select Orders.OrderID, Customers.CustomerName, Products.ProductName, Products.Price, Orders.OrderDate From ((Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID) INNER JOIN Products ON Orders.ProductID=Products.ProductID) ORDER BY Products.Price;/*2*/

Select Customers.CustomerID, Customers.CustomerName, Orders.OrderDate , Products.ProductName From ((Customers LEFT JOIN Orders ON Orders.CustomerID=Customers.CustomerID) LEFT JOIN Products ON Orders.ProductID=Products.ProductID) ORDER BY Customers.CustomerID;/*3*/

Select COUNT(CustomerID), Country From Customers GROUP BY Country;/*4*/

Select Count(CustomerID), Country From Customers GROUP BY Country ORDER BY Count(CustomerID);/*5*/

Select Customers.CustomerName, COUNT(Orders.CustomerID) AS 'Number of Orders' From Orders INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID GROUP BY Customers.CustomerName;/*6*/

SELECT COUNT(Orders.OrderID) AS 'Count OrderID', COUNT(Orders.CustomerID) AS 'Count CustomerID' FROM Orders;/*7*/

SELECT Customers.CustomerName,Products.ProductName, COUNT(Orders.CustomerID) AS 'Number of Orders' FROM ((Orders INNER JOIN Customers ON Customers.CustomerID=Orders.CustomerID) INNER JOIN Products ON Products.ProductID=Orders.ProductID) GROUP BY Customers.CustomerName, Products.ProductName;

SELECT CustomerName, Country FROM Customers
UNION
SELECT Name, Country FROM Users;  /*9*/

SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country HAVING COUNT(CustomerID) > 4;/*10*/