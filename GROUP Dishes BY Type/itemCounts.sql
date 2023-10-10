CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select  item_name, item_type, count(item_name) as item_count
	FROM availableItems
	group by item_name, item_type
	Order by item_type,item_name;
END
