select Count(c.SupportRepId) as CountOfCustomersPerRep, e.FirstName + ' ' + e.Lastname [Sales Agent]
from Employee e
	join Customer c
	on e.EmployeeId = c.SupportRepId
group by e.FirstName + ' ' + e.Lastname