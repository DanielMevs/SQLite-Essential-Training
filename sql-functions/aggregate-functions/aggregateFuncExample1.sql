/* Created by: Daniel Mevs
Created date: 8/13/23
Description: Aggregate functions | What are our all time global sales?
*/

SELECT
	SUM(Total) AS [Total Sales],
		AVG(Total) AS [Average Sales],
			MAX(Total) AS [Maximum Sale],
				MIN(Total) AS [Minimum Sale],
					COUNT(*) AS [Sales Count]
					FROM
						Invoice
