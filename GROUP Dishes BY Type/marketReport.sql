CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
SELECT country, competitors
FROM (
    SELECT country, COUNT(competitor) AS competitors
    FROM foreignCompetitors
    GROUP BY country
    UNION ALL
    SELECT 'Total:', COUNT(competitor)
    FROM foreignCompetitors
) AS subquery
ORDER BY CASE WHEN country = 'Total:' THEN 1 ELSE 0 END, country;


END
