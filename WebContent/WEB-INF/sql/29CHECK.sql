USE mydb1;

-- CHECK : 입력되는 값을 검사 
CREATE TABLE MyTable14 (
	col1 INT,
    col2 INT CHECK (col2 > 0)
);

DESC MyTable14;
INSERT INTO MyTable14 (col1, col2) VALUES (3, 3);
INSERT INTO MyTable14 (col1, col2) VALUES (-3, 3);
INSERT INTO MyTable14 (col1, col2) VALUES (3, -3);
SELECT * FROM MyTable14;

SHOW CREATE TABLE MyTable14;

CREATE TABLE `MyTable14` (
   `col1` int(11) DEFAULT NULL,
   `col2` int(11) DEFAULT NULL CHECK (`col2` > 0)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
 
 -- backtick
 CREATE TABLE MyTable15 (
	`unique` VARCHAR(10)
 );