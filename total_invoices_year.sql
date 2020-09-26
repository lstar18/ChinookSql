Select Count(*) as NumberOfInvoices, Year(i.InvoiceDate) as Year
from invoice i
where Year(i.InvoiceDate) = 2009 or Year(i.InvoiceDate)= 2011
group by Year(i.InvoiceDate)