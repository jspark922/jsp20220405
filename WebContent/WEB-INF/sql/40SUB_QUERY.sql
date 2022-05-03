USE w3schools;

-- 주문한 적 없는 고객명 조회(JOIN, SUB_QUERY)
-- Orders, Customers
SELECT * FROM Customers;
SELECT * FROM Orders;
-- JOIN
SELECT c.CustomerName 
FROM Customers c LEFT JOIN Orders o 
ON c.CustomerID = o.CustomerID 
WHERE o.CustomerID IS NULL;
-- SUB_QUERY
SELECT CustomerName 
FROM Customers 
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);


-- 고객별 주문 수 (JOIN, SUB QUERY)
SELECT * FROM Customers;
SELECT * FROM Orders;
-- JOIN
SELECT c.CustomerName, COUNT(o.OrderID) NumOfOrders
FROM Customers c LEFT JOIN Orders o 
ON c.CustomerID = o.CustomerID 
GROUP BY c.CustomerID
ORDER BY 1;
-- SUB QUERY
SELECT c.CustomerName, 
		(SELECT COUNT(o.OrderID) FROM Orders o WHERE o.CustomerID = c.CustomerID) NumOfOrders
FROM Customers c
ORDER BY 1;

-- 상품명과 카테고리명 조회
-- JOIN
SELECT p.ProductName, c.CategoryName 
FROM Products p JOIN Categories c
ON p.CategoryID = c.CategoryID
ORDER BY 1;
-- SUB QUERY
SELECT p.ProductName, (SELECT c.CategoryName FROM Categories c WHERE c.CategoryID = p.CategoryID) CategoryName
FROM Products p
ORDER BY 1;

-- Suppliers, Customers
-- 고객과 공급자가 모두 있는 나라 조회 (JOIN, SUBQUERY)
SELECT * FROM Suppliers;
SELECT * FROM Customers;

-- JOIN
SELECT DISTINCT s.Country
FROM Suppliers s JOIN Customers c
ON s.Country = c.Country
ORDER BY 1;

-- SUB QUERY
SELECT DISTINCT Country
FROM Suppliers
WHERE Country IN (SELECT Country FROM Customers)
ORDER BY 1;

-- leetcode 1587

-- sub query
SELECT (SELECT name FROM Users u WHERE t.account = u.account) name,
       SUM(t.amount) balance
FROM Transactions t
GROUP BY t.account
HAVING balance > 10000;

-- JOIN
SELECT u.name, SUM(t.amount) balance
FROM Users u JOIN Transactions t 
   ON u.account = t.account
GROUP BY u.account
HAVING balance > 10000;
