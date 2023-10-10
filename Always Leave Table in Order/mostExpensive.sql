CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
SELECT name from Products
ORDER BY price * quantity DESC, name
LIMIT 1;

END
