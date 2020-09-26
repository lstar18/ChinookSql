Select e.FirstName + ' ' + e.LastName, i.invoiceid, c.customerId, i.Total
from customer c 
	join employee e
	on c.customerId = e.employeeId
		join invoice i
		on c.customerId = i.customerId

