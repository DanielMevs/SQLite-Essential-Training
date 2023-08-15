/* Created by: Daniel Mevs
Created on: 8/14/23
Description: Views and Joins

*/

CREATE VIEW V_Tracks_InvoiceLine AS
SELECT
	i.InvoiceId,
		i.UnitPrice,
			i.Quantity,
				t.Name,
					t.Composer,
						t.Milliseconds
						FROM
							InvoiceLine i
							INNER JOIN
								Track t
								ON
									i.TrackId = t.TrackId
