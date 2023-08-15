/*
Created by: Daniel Mevs
Created on: 8/14/23
Description: More targeted questions that query the tables containing data about customers and employees

*/

-- 1. Get a list of customers who made purchases between 2011-2012

SELECT
	c.FirstName,
		c.LastName,
			i.total
			FROM Invoice i
			INNER JOIN
				Customer c
				ON i.CustomerId = c.CustomerId
				WHERE
					InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
					ORDER BY
						i.total DESC
