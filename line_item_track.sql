select iLine.InvoiceLineId, iLine.TrackId, t.Name
from InvoiceLine iLine
	join track t
	on iLine.TrackId = t.TrackId
order by InvoiceLineId
