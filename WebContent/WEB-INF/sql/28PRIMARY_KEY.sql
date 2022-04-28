USE mydb1;

CREATE TABLE MyTable12 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL UNIQUE
);

DESC MyTable12;

-- primary key : not null, unique 조합
CREATE TABLE MyTable13 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) PRIMARY KEY
);

DESC MyTable13;
SET SQL_SAFE_UPDATES = 0;

delete from MyTable13;
INSERT INTO MyTable13 (col1, col2) VALUES ('a', 'a');
INSERT INTO MyTable13 (col1, col2) VALUES ('a', 'b');
INSERT INTO MyTable13 (col1, col2) VALUES ('a', 'b');
INSERT INTO MyTable13 (col1, col2) VALUES ('a', null);
INSERT INTO MyTable13 (col1) VALUES ('a');
SELECT * FROM MyTable13;

-- auto_increment : 자동으로 값 증가
CREATE TABLE MyTable17 (
	col1 INT PRIMARY KEY AUTO_INCREMENT, -- 1부터 자동으로 1씩 증가하는 값 입력해줌
    col2 VARCHAR(10)
);
DESC MyTable17;
SELECT * FROM MyTable17;
INSERT INTO MyTable17 (col2) VALUES ('abce');

DELETE FROM MyTable17 WHERE col1 = 20;
