Select distinct e.FirstName + ' ' + e.LastName[Sales Agent], i.invoiceid
from customer c 
	join employee e
	on c.customerId = e.employeeId
		join invoice i
		on c.customerId = i.customerId

