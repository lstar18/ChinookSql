select top 1 m.Name [Media Type], count(t.MediaTypeId) [Media Type Count]
from Track t
	left join MediaType m
		on t.MediaTypeId = m.MediaTypeId
	left join InvoiceLine iLine
		on iLine.TrackId = t.TrackId
	left join Invoice i
		on i.InvoiceId = iLine.InvoiceId
group by m.Name