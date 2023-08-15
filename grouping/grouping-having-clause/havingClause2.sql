/* Creation author: Daniel Mevs
Creation date: 8/13/23
Description: What are the average invoice totals greater than $5.00 for cities starting with B?

*/

SELECT
	BillingCity,
		round(avg(total), 2)
		FROM
			Invoice
			WHERE
				BillingCity LIKE 'B%'
				GROUP BY
					BillingCity
					HAVING
						avg(total)> 5
						ORDER BY
							BillingCity
