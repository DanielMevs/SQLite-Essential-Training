/* Created by: Daniel Mevs
Created date: 8/10/23
Description: Find how many invoices were billed on May 22, 2010
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
						--InvoiceDate = '2010-05-22 00:00:00'
-- 	DATE(InvoiceDate) = '2010-05-22'
	DATE(InvoiceDate) > '2010-05-22' AND total < 3.00
	ORDER BY
		InvoiceDate
