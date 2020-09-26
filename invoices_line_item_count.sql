select i.InvoiceId, Count(InvoiceLine.InvoiceId) [Invoice Line Count]
from Invoice i
	join InvoiceLine
		on i.InvoiceId = InvoiceLine.InvoiceId
group by i.InvoiceId