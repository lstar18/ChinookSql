select count(*) as CountofInvoices, BillingCountry
from Invoice i
group by BillingCountry