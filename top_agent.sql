select TOP 1  e.FirstName + ' ' + e.LastName [Sales Agent], sum(i.Total) [Total Sales]
from Invoice i
	join Customer c
		on i.CustomerId = c.CustomerId
	join Employee e
		on e.EmployeeId = c.SupportRepId
group by e.FirstName + ' ' + e.LastName