CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT
    (DAYOFWEEK(mischief_date) + 5) % 7 AS weekday,
    mischief_date,
    author,
    title
FROM
    mischief
ORDER BY
    weekday,
    CASE
        WHEN author = 'Huey' THEN 1
        WHEN author = 'Dewey' THEN 2
        ELSE 3
    END,
    mischief_date,
    title;

END
