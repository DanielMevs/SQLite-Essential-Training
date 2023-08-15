/* Creation author: Daniel Mevs
Creation date: 8/16/23
Description: Subqueries | Gather data about all invoices that are less than the average invoice total in the invoice TABLE

*/

SELECT
	InvoiceDate,
		BillingCity,
			BillingAddress,
				total
				FROM
					Invoice
					WHERE
						total <
								(SELECT
												avg(total)
														FROM
																	Invoice)
																ORDER BY
																	Total DESC
