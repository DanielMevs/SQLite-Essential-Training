/* Creation author: Daniel Mevs
Creation date: 8/12/23
Description: RIGHT OUTER JOIN

*/

SELECT
	i.InvoiceId,
		c.CustomerId,
			c.firstName,
				c.LastName,
					c.Address,
						i.InvoiceDate,
							i.BillingAddress,
								i.Total
								FROM
									Customer AS c
									LEFT JOIN
										
										Invoice AS i
										ON 
											i.CustomerId = c.CustomerId
