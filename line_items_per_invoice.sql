select count(*) as CountOfLinesPerInvoice, InvoiceId
from InvoiceLine iLine
group by iLine.InvoiceId