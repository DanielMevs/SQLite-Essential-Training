/* Created by: Daniel Mevs
Created Date: 8/10/2023
Description: Find the number of customers who order two songs at $0.99 each.
*/

SELECT
	InvoiceDate,
		BillingAddress,
			BillingCity
			FROM
				Invoice
				WHERE
					total = 1.98
					ORDER BY
						InvoiceDate
