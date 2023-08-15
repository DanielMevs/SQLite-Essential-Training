/* Created by: Daniel Mevs
Created date: 8/10/23
Description: Find the number of invoices were billed in a city that starts with 'B'
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
						BillingCity  LIKE 'B%'
						ORDER BY
							InvoiceDate
