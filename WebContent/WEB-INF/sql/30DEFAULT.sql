USE mydb1;

-- DEFAULT : 값이 명시되지 않았을 때 기본값
CREATE TABLE MyTable16 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) DEFAULT 'hello'
);
DESC MyTable16;
INSERT INTO MyTable16 (col1, col2) VALUES ('abc', 'def');
SELECT * FROM MyTable16;
INSERT INTO MyTable16 (col1, col2) VALUES ('abc', null);
INSERT INTO MyTable16 (col1) VALUES ('abc');