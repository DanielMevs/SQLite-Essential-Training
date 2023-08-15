/* Created by: Daniel Mevs
Created date: 8/14/23
Description: Modify View

*/
DROP VIEW "main"."V_AvgTotal";
CREATE VIEW V_AvgTotal AS
SELECT
	avg(total) AS [Average Total]
	FROM
		Invoice
