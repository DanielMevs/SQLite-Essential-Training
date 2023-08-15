/* Created by: Daniel Mevs
Created date: 8/14/23
Description: Queries that perform in-depth analysis with the aim of finding
employees who may have been financially motivated to commit the crime

*/

-- 1. Get a list of employees who exceed the average transaction amount from sales they generated during 2011-2012
SELECT
	e.FirstName,
		e.LastName,
			sum(i.total) AS [Total Sales]
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
							AND
								i.total > 11.66
								GROUP BY
									e.FirstName,
										e.LastName
										ORDER BY
											e.LastName


