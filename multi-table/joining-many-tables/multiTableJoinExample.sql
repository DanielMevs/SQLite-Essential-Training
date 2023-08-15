/*Created by: Daniel Mevs
Created Date: 8/12/23
Description: JOIN's on multiple talbes. What employees are responsible for the 10 highest individual sales
*/

SELECT
	e.FirstName,
		e.LastName,
			e.EmployeeId,
				c.FirstName,
					c.LastName,
						c.SupportRepId,
							i.CustomerId,
								i.total
								FROM
									Invoice as i
									INNER JOIN
										Customer as c
										ON
											i.CustomerId = c.CustomerId
											INNER JOIN
												Employee as e
												ON
													c.SupportRepId = e.EmployeeId
													ORDER BY
														i.total DESC
														LIMIT 10
