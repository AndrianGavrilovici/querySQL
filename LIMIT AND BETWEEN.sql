SELECT * FROM Customers LIMIT 5;

SELECT * FROM Customers LIMIT 9;

SELECT * FROM Customers WHERE CustomerID BETWEEN 5 AND 9;

SELECT * FROM Customers WHERE CustomerID BETWEEN 9 AND  19;

SELECT CustomerID, OrderDate, ProductID FROM Orders WHERE CustomerID BETWEEN 38 AND 45;

SELECT CustomerID, OrderDate, ProductID FROM Orders LIMIT 8;

SELECT * FROM Customers WHERE CustomerID >= 5 AND CustomerID <=9;

SELECT OrderID, CustomerID, OrderDate, ProductID FROM Orders LIMIT 15;

SELECT * FROM Orders WHERE OrderDate BETWEEN '2018-12-22' AND '2019-02-04';
