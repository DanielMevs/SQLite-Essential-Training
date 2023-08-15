/* Created by: Daniel Mevs
Created date: 8/14/23
Description: Subqueries and DISTINCT | Which tracks are not selling?

*/
SELECT
	TrackId,
		Composer,
			Name
			FROM
				Track
				WHERE
					TrackId
					NOT IN
					(SELECT
							DISTINCT
								TrackId
								FROM
									InvoiceLine
									ORDER BY
										TrackId
									)
