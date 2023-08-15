/* Creation author: Daniel Mevs
Creation date: 8/13/23
Description: Calculate the age of all employees
*/

SELECT
	LastName,
		FirstName,
			BirthDate,
				strftime("%Y-%m-%d", Birthdate) AS [BirthDate No Timecode],
					strftime("%Y-%m-%d", 'now') - strftime("%Y-%m-%d", Birthdate) AS Age
					FROM
						Employee
