CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
SELECT first_name, second_name, attribute
FROM users
WHERE attribute REGEXP CONCAT('^.{1,}%',first_name,'_',second_name,'%.{0,}') COLLATE utf8_bin
ORDER BY attribute;
END
