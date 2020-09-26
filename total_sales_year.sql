Select sum(i.Total) as TotalSales, Year(i.InvoiceDate) as Year
from invoice i
where Year(i.InvoiceDate) = 2009 or Year(i.InvoiceDate)= 2011
group by Year(i.InvoiceDate)