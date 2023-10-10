CREATE PROCEDURE solution()
BEGIN
SELECT DISTINCT subscriber AS subscriber
FROM full_year
WHERE newspaper LIKE '%Daily%'
UNION
SELECT DISTINCT subscriber AS subscriber
FROM half_year
WHERE newspaper LIKE '%Daily%'
ORDER BY subscriber;

END
