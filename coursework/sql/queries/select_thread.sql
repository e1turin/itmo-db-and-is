SELECT 
	comment_id, 
	title, 
	content, 
	reactions_id, 
	creation_date, 
	trashed,
	role_id
FROM "Comments" c
JOIN "Users" u
  ON u.user_id = c.user_id
WHERE thread_id = 1;