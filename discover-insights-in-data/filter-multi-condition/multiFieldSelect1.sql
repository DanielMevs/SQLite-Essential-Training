/* Created by: Daniel Mevs
Created date: 8/10/23
Description: Find the customers whose billing address is in Brussels, Paris and Orlando
*/

SELECT
	InvoiceDate,
		BillingAddress,
			BillingCity,
				total
				FROM
					Invoice
					WHERE
						BillingCity  IN ('Brussels', 'Orlando', 'Paris')
						ORDER BY
							InvoiceDate
