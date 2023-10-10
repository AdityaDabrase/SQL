CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
SELECT Name, ID
FROM Grades
WHERE 
	Final > (0.5 * Midterm1 + 0.5 * Midterm2)
	AND Final > (0.25 * Midterm1 + 0.25 * Midterm2 + 0.5 * Final)
ORDER BY LEFT(Name, 3), ID;

END
