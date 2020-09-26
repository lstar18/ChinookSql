select iLine.InvoiceLineId, iLine.TrackId, t.Name[Track Name], ar.Name[Artist Name]
from InvoiceLine iLine
	join track t
	on iLine.TrackId = t.TrackId
		join Album a
			on t.AlbumId = a.AlbumId
				join Artist ar
					on a.ArtistId = ar.ArtistId
order by InvoiceLineId
