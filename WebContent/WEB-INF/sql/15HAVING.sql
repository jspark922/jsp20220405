USE w3schools;

SELECT * FROM Customers;

SELECT Country, COUNT(CustomerID) count FROM Customers
WHERE count = 6 -- WHERE FROM절 테이블의 각 Row를 연산
GROUP BY Country;

SELECT Country, COUNT(CustomerID) FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 3; -- HAVING aggregate function 결과를 조건으로 줄 수 있음

SELECT Country, COUNT(CustomerID) count FROM Customers
GROUP BY Country
HAVING count > 3;

SELECT Country FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) = 
(
SELECT COUNT(CustomerID) count 
FROM Customers
GROUP BY Country
ORDER BY count LIMIT 1
);