select e.FirstName + ' ' + e.LastName [Sales Agent], sum(i.Total) TotalSale
From Customer c
	join Invoice i
	on i.CustomerId = c.CustomerId
	join Employee e
	on e.EmployeeId = c.SupportRepId
group by e.FirstName + ' ' + e.LastName