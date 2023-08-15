/* Created by: Daniel Mevs
Created date: 8/10/23
Description: Find the number of invoices of songs between $1.98 and $5.00
*/

SELECT
	InvoiceDate,
		BillingAddress,
			BillingCity
			FROM
				Invoice
				WHERE
					total IN (1.98, 3.96)
					ORDER BY
						InvoiceDate
