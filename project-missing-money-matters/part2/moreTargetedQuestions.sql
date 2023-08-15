/*Created by: Daniel Mevs
Created on: 8/14/23
Description: More targeted questions that query the tables containing data about customers and employees

*/

-- 2. Get a list of customers, sales reps, and total transaction amounts for each customer between 2011-2012
SELECT
	c.FirstName AS [Customer FN],
		c.LastName AS [Customer LN],
			e.FirstName AS [Employee FN],
				e.LastName AS [Employee, LN],
					i.total
					FROM
						Invoice i
						INNER JOIN
							Customer c
							ON i.CustomerId = c.CustomerId
							INNER JOIN
								Employee e
								ON e.EmployeeId = c.SupportRepId
								WHERE
									InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
									ORDER BY
										i.total DESC

