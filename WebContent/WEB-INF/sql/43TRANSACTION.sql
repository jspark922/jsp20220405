USE mydb2;

DELETE FROM Reply WHERE board_id = 7;
-- ROLLBACK;
DELETE FROM Board
WHERE id = 7;
COMMIT;

SELECT * FROM Reply WHERE board_id = 7;