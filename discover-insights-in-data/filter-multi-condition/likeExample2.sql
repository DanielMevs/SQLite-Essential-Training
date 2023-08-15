/* Created by: Daniel Mevs
Created date: 8/10/23
Description: Find how many invoices have cities that start with P or start with D 
*/
-- % is like saying I don't care what comes next (wild card character)
SELECT
	InvoiceDate,
		BillingAddress,
			BillingCity,
				total
				FROM
					Invoice
					WHERE
						BillingCity LIKE 'P%' OR BillingCity LIKE 'D%'
						ORDER BY
							InvoiceDate
