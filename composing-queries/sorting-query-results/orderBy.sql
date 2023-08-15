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
					total BETWEEN 1.98 AND 5.00
					ORDER BY
						InvoiceDate
