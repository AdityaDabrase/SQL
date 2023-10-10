CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select DISTINCT name from projectLog
	ORDER by name;
END
