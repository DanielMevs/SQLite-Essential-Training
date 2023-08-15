/* Created date: 8/13/23
Description: Nesting functions
*/

SELECT
	SUM(Total) AS [Total Sales],
		round(AVG(Total),2) AS [Average Sales],
			MAX(Total) AS [Maximum Sale],
				MIN(Total) AS [Minimum Sale],
					COUNT(*) AS [Sales Count]
					FROM
						Invoice
