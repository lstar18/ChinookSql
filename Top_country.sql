Select TOP 1 i.BillingCountry Country, sum(i.Total) [Total amount]
from Invoice i
Group By i.BillingCountry
Order By [Total amount] desc