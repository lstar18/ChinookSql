select c.FirstName, c.LastName, c.Country, i.Total, e.FirstName, e.LastName
from invoice i
	left join Customer c
		on i.CustomerId = c.CustomerId
			join employee e
				on e.EmployeeId = c.SupportRepId