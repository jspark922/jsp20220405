USE mydb2;

-- 댓글이 있는 게시물
-- JOIN
SELECT DISTINCT b.* 
FROM Board b JOIN Reply r ON b.id = r.board_id;
-- SUB_QUERY
SELECT id, title
FROM Board
WHERE id IN  -- (1, 3, 5, 7);
			(SELECT board_id FROM Reply);
-- 댓글이 없는 게시물
-- JOIN
SELECT b.id, b.title 
FROM Board b LEFT JOIN Reply r ON b.id = r.board_id 
WHERE r.id IS NULL;
-- SUB_QUERY
SELECT id, title
FROM Board
WHERE id NOT IN -- (1, 3, 5, 7);
				(SELECT board_id FROM Reply);
                
                
-- 게시글별 댓글 수 (JOIN)
SELECT b.*, COUNT(r.id) NumOfReply
FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
GROUP BY b.id
ORDER BY b.id DESC;

-- 게시글별 댓글 수 (SUB_QUERY)
SELECT b.*, (SELECT COUNT(r.id) FROM Reply r WHERE r.board_id = b.id) NumOfReply
FROM Board b
ORDER BY b.id DESC;