CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT continent, Sum(users) as users
	from countries
	group by continent
	order by users desc;
END
