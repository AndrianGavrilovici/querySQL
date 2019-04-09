SELECT COUNT(Products.ProductID), Products.ProductName, SUM(Products.Price) FROM Products INNER JOIN Orders ON Orders.ProductID=Products.ProductID GROUP BY Products.ProductName HAVING COUNT(Products.ProductID) > 1 ORDER BY Products.Price;

SELECT MIN(Price) FROM Products;

SELECT ProductID, ProductName, Price FROM Products HAVING Price=(SELECT MIN(Price) FROM Products);

SELECT ProductID, ProductName, Price FROM Products HAVING Price=(SELECT MAX(Price) FROM Products);
