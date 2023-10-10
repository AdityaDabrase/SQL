CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT id, name, surname
	from Suspect 
	WHERE name LIKE ('B%')
	and surname LIKE ('gre_n')
	and height <= 170
	order by id asc;
END
