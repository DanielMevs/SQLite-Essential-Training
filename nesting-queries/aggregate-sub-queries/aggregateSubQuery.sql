/* Created by: Daniel Mevs
Created date: 8/13/23
Description: Subqueries in the SELECT | How is each individual city performing against the global average sales?

*/

SELECT
	BillingCity,
		ROUND(AVG(total), 2) AS [City Average],
			(select round(avg(total), 2) from Invoice) AS [Global Average]
			FROM
				Invoice
				GROUP BY
					BillingCity
					ORDER BY
						BillingCity
