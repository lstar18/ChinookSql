select i.BillingCountry Country, sum(i.Total) [Total amount]
from Invoice i
Group By i.BillingCountry