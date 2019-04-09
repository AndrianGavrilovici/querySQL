-- Selectam toate Country numai odata
SELECT DISTINCT Country FROM Customers;
-- Selectam numarul de Country numai odata
SELECT COUNT(DISTINCT Country) FROM Customers;
-- Selectam ProductID unice crescator
SELECT DISTINCT ProductID FROM Orders ORDER BY ProductID;
-- Selectam nr de comenzi la ProductID unice
SELECT COUNT(DISTINCT ProductID) FROM Orders;
