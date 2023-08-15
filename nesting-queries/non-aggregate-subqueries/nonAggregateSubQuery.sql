/* Creation Author: Daniel Mevs
Creation Data: 8/13/23
Description: Subqueries without Aggregate functions

*/

SELECT
	InvoiceDate,
		BillingAddress,
			BillingCity
			FROM
				Invoice
				WHERE
					InvoiceDate >
					(SELECT
							InvoiceDate
							FROM
								Invoice
								WHERE
									InvoiceId = 251
								)
