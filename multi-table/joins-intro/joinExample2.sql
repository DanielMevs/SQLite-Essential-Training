/* Created by: Daniel Mevs
Created Date: 8/11/23
Description: JOINS
*/

SELECT
	*
	FROM
		Invoice
		INNER JOIN
			Customer
			ON
				Invoice.CustomerId = Customer.CustomerId
