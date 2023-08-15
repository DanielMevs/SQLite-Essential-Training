/*

Created by: Daniel Mevs
Created on: 8/14/23
Description: General queries that begin to give you some high-level context

*/

-- 1. How many transactions took place between the years of 2011-2012

SELECT
	COUNT(*)
	FROM
		Invoice
		WHERE
			InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
				
				
			-- 2. How much money did WSDA Music Co. make during the same period?

SELECT
	SUM(total)
	FROM
		Invoice
		WHERE
			InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
