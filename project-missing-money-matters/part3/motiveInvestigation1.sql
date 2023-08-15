/* Created by: Daniel Mevs
Created date: 8/14/23
Description: Queries that perform in-depth analysis with the aim of finding
employees who may have been financially motivated to commit the crime

*/

-- 2. Create a Commission payout column that displays each employee's commission
--  based on %15 of the sales transation amount

SELECT
	e.FirstName,
		e.LastName,
			sum(i.total) AS [Total Sales],
				round(sum(i.total) * .15, 2) AS [Commission Payout]
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
								GROUP BY
									e.Firstname,
										e.LastName
										ORDER BY
											e.LastName
												
											-- 3. Which employee made the highest commission?
-- Jane Peacock with $106.21
