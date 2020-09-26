select top 5 count(t.TrackId) [units sold], t.Name
from Track t
	left join InvoiceLine iLine
	on t.TrackId = iLine.TrackId
Group by t.Name
Order By [Units Sold] desc