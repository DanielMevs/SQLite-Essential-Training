/* Created by: Daniel Mevs
Created on: 8/14/23
Description: More targeted questions that query the tables containing data about customers and employees

*/


-- 4. What was the average transaction amount for each year that WSDA Music has been in business

SELECT
	round(avg(total), 2) AS [Avg Transaction Amount],
		strftime ('%Y', InvoiceDate) AS [Year]
		FROM
			Invoice
			GROUP BY
				strftime('%Y', InvoiceDate)
