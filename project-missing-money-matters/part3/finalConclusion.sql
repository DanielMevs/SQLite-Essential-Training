/* Created by: Daniel Mevs
Created date: 8/14/23
Description: Queries that perform in-depth analysis with the aim of finding
employees who may have been financially motivated to commit the crime

*/

-- 6. Take a look at this customer record. Does it look suspicious?
-- Yes, yes it does. Most of the fields are NULL...

SELECT 
	*
	FROM
		Customer c
		WHERE
			c.LastName = 'Doeein'

			-- 7. Who can you conclude is our primary person of interest?
-- Jane Peacock.

