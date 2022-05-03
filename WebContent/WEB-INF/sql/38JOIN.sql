USE w3schools;

-- Orders : 주문
-- Customers : 고객
-- 주문한 적없는 고객 명
SELECT c.CustomerName
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL
ORDER BY 1
;

SELECT * FROM Customers;
SELECT * FROM Orders;
-- 고객별 주문 건수 with 0건도 나와야함
SELECT c.CustomerName, COUNT(o.OrderID)
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY 2 DESC
;
