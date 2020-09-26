select top 10 count(t.TrackId) UnitsBought, t.Name
from Invoice i
	left join InvoiceLine iLine
	on i.InvoiceId = iLine.InvoiceId
	left join Track t
	on t.TrackId = iLine.TrackId
where i.InvoiceDate like '%2013%'
Group by t.Name
Order By UnitsBought desc