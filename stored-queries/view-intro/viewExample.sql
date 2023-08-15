/* Created by: Daniel Mevs
Created date: 8/14/23
Description: Views

*/

CREATE VIEW V_AvgTotal AS
SELECT
	round(avg(total), 2) AS [Average Total]
	FROM
		Invoice
