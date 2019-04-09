SELECT Customers.ContactName, COUNT(Orders.OrderID)AS'Number of Orders' FROM Orders INNER JOIN Customers ON Customers.CustomerID=Orders.CustomerID WHERE Customers.ContactName='Vasile' OR Customers.ContactName='Andrian' GROUP BY Customers.ContactName HAVING COUNT(Orders.OrderID) > 2 ORDER BY COUNT(Orders.OrderID); /*1*/

SELECT Customers.ContactName,Products.ProductName,COUNT(Orders.OrderID)AS'Number of Orders' FROM ((Orders INNER JOIN Customers ON Customers.CustomerID=Orders.CustomerID ) INNER JOIN Products ON Products.ProductID=Orders.ProductID) WHERE Customers.ContactName='Vasile' OR Customers.ContactName='Andrian' GROUP BY Customers.ContactName, Products.ProductName; /*2*/

SELECT Customers.ContactName,Products.ProductName,COUNT(Orders.OrderID)AS'Number of Orders' FROM ((Orders INNER JOIN Customers ON Customers.CustomerID=Orders.CustomerID ) INNER JOIN Products ON Products.ProductID=Orders.ProductID) GROUP BY Customers.ContactName, Products.ProductName ORDER BY Products.ProductName; /*3*/

SELECT ProductID, ProductName, Price FROM Products WHERE EXISTS (SELECT ProductID FROM Orders WHERE ProductID=Products.ProductID AND Products.Price > 20); /*4*/

SELECT COUNT(Products.ProductID), Products.ProductName, Products.Price FROM Products INNER JOIN Orders ON Orders.ProductID=Products.ProductID WHERE Products.Price > 20 GROUP BY Products.ProductName, Products.Price; /*5*/

SELECT ProductID, ProductName FROM Products WHERE ProductID = ANY (SELECT ProductID FROM Orders WHERE EmployeeID > 3) ORDER BY ProductID ASC;/*6*/

SELECT CustomerName, ContactName, Country, PostalCode FROM Customers WHERE ContactName NOT LIKE '% %';

INSERT INTO Users (Name, Lastname, Country, Email)
SELECT CustomerName, ContactName, Country, PostalCode FROM Customers WHERE PostalCode NOT LIKE '% %' AND CustomerName NOT LIKE '% %';