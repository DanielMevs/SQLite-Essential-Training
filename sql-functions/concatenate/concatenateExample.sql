/* Created by: Daniel Mevs
Created Date: 8/12/23
Description: String Functions
*/

-- The pipe (denoted ||) indicates concatenating two strings

SELECT
	FirstName,
		LastName,
			Address,
				FirstName || ' ' || LastName || ' ' || Address || ', ' || City || ' ' || State || ' ' || PostalCode AS [Mailing Address]
				FROM
					Customer
					WHERE
						Country = 'USA'

						
