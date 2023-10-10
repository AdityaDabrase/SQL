CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select distinct director from moviesInfo
	WHERE year > 2000
	group by director
	HAVING sum(oscars)>2
	order by director ASC;
END
