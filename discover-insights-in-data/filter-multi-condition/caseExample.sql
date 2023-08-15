/*Created by: Daniel Mevs
Created date: 8/10/23
Description: WSDA Music wants as many customers as possible to spend between $7.00 and $15.00
*/
/*
Baseline Purchase - Between $0.99 - $1.99
Low Purchase - Between $2.00 - $6.00
Target Purchase - Between $7.00 - $15.00
Top Performer - Above $15.00
*/
SELECT
	InvoiceDate,
		BillingAddress,
			BillingCity,
				total,
					CASE
							WHEN total < 2.00 THEN 'Baseline Purchase'
									WHEN total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
											WHEN total BETWEEN 7.00 AND 15.00 THEN 'Target Purchase'
													ELSE 'Top Performer'
															END AS PurchaseType
															FROM
																Invoice
												WHERE
																	PurchaseType = 'Top Performer'
																	ORDER BY
																		InvoiceDate
