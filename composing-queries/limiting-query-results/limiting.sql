/*
Created by: Daniel Mevs
Created date: 8/10/23
Description: all customers first and last names along with their emails
*/
SELECT
	FirstName AS [Customer First Name],
		LastName AS [Customer Last Name],
			Email AS [Customer Email]
			FROM 
				Customer
				ORDER BY
					FirstName ASC,
						LastName DESC
						LIMIT 10
