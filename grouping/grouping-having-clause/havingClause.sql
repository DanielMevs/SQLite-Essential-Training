/* Creation author: Daniel Mevs
Creation date: 8/13/23
Description: What are the cities where the average invoice totals greater than $5.00?

*/

SELECT
	BillingCity,
		round(avg(total), 2)
		FROM
			Invoice
			GROUP BY
				BillingCity
				HAVING
					avg(total) > 5
					ORDER BY
						BillingCity
