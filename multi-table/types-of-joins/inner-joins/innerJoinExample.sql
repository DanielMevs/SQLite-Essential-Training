/* Creation author: Daniel Mevs
Creation date: 8/12/23
Description: INNER JOIN

*/

SELECT
	i.InvoiceId,
		c.CustomerId,
			i.InvoiceDate,
				i.BillingAddress,
					i.Total
					FROM
						Invoice AS i
						INNER JOIN Customer AS c
						ON i.CustomerId = c.CustomerId
