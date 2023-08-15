/* Created by: Daniel Mevs
Created on: 8/14/23
Description: More targeted questions that query the tables containing data about customers and employees

*/

-- 3a. How many transactions are above the average transaction amount during the same time?
-- Find the average transaction amount between 2011 and 2012

SELECT
	round(avg(total), 2) AS [Avg Transaction Amount]
	FROM 
		Invoice
		WHERE
			InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'

			-- 3b. Get the number of transactions above the average transaction amount

SELECT
	count(total) AS [Num of Transactions Above Avg]
	FROM
		Invoice
		WHERE
			total > (
						SELECT
									round(avg(total), 2) AS [Avg Transaction Amount]
											FROM 
														Invoice
																WHERE
																			InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
																				)
																				AND
																				InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'

