/* Creation author: Daniel Mevs
Creation date: 8/13/23
Description: Grouping in SQL | What are the average invoice totals by city for only the cities that start with L?

*/

SELECT
	BillingCity,
		round(avg(total),2) as [Average Sale]
		FROM
			Invoice
			WHERE
				BillingCity LIKE 'L%'
				GROUP BY
					BillingCity
					ORDER BY
						BillingCity
