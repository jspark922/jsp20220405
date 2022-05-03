USE mydb2;

SELECT * FROM Board; -- 4개열 , 7개행
SELECT * FROM Reply; -- 4개열, 3개행

SELECT * FROM Board, Reply; -- 결합(Cartesian Preoduct) : 8개열 (4 + 4), 84개행(7 * 3)
SELECT * FROM Reply, Board;
SELECT * FROM Board JOIN Reply; -- Cartesian Preoduct
SELECT * FROM Board JOIN Reply ON Board.id = Reply.board_id; -- INNER JOIN (주로 사용)
SELECT * FROM Board, Reply WHERE Board.id = Reply.board_id; -- INNER JOIN
SELECT * FROM Board JOIN Reply WHERE Board.id = Reply.board_id; -- INNER JOIN
