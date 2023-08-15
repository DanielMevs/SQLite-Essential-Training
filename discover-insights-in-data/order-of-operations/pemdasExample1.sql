/* Created by: Daniel Mevs
Created date: 8/10/23
Description: Find how many invoices have cities that start with P or start with D and total is greater than 1.98
*/
-- % is like saying I don't care what comes next (wild card character)
-- PEMDAS - Parentheses, Exponents, Multiplication/Division, Addition/Subtraction
SELECT
	InvoiceDate,
		BillingAddress,
			BillingCity,
				total
				FROM
					Invoice
					WHERE
						total > 1.98 AND (BillingCity LIKE 'P%' OR BillingCity LIKE 'D%')
						ORDER BY
							InvoiceDate
