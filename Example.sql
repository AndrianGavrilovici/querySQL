SELECT COUNT(Products.ProductID), Products.ProductName, SUM(Products.Price) FROM Products INNER JOIN Orders ON Orders.ProductID=Products.ProductID HAVING COUNT(Products.ProductID) > 1 ORDER BY Products.Price GROUP BY Products.ProductName;

SELECT MIN(Price) FROM Products;

SELECT ProductID, ProductName, Price FROM Products HAVING Price=(SELECT MIN(Price) FROM Products);

SELECT ProductID, ProductName, Price FROM Products HAVING Price=(SELECT MAX(Price) FROM Products);

SELECT Customers.CustomerName, Orders.CustomerID FROM Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID GROUP BY Customers.CustomerName;

SELECT Orders.CustomerID FROM Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID GROUP BY Orders.CustomerID; 

SELECT Customers.CustomerName, COUNT(Orders.CustomerID) AS CATI, Orders.CustomerID FROM Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID GROUP BY Customers.CustomerName;

SELECT MAX(SELECT Orders.CustomerID FROM Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID) FROM Orders;

SELECT "asd";
