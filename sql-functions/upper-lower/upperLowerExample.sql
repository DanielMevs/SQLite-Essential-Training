/* Created by: Daniel Mevs
Created Date: 8/12/23
Description: Create a mailing list of US Customers
*/

-- The pipe (denoted ||) indicates concatenating two strings

SELECT
	FirstName,
		LastName,
			Address,
				FirstName || ' ' || LastName || ' ' || Address || ', ' || City || ' ' || State || ' ' || PostalCode AS [Mailing Address],
					LENGTH(PostalCode),
						substr(PostalCode, 1, 5) AS ['5 Digit Postal Code'],
							upper(FirstName) AS ['First Name All Caps'],
								lower(LastName) AS ['Last Name All Lower']
								FROM
									Customer
									WHERE
										Country = 'USA'

