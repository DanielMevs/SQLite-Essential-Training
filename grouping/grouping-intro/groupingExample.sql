/*Creation Author: Daniel Mevs
Creation Date: 8/31/23
Description: Grouping in SQL | What are the average invoice totals by city?

*/

SELECT
	BillingCity,
		round(avg(total),2)
		FROM
			Invoice
			GROUP BY
				BillingCity
				ORDER BY
					BillingCity
