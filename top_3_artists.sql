select top 3 sum(Track.UnitPrice)[units sold], Artist.Name
from Track 
	left join InvoiceLine
		on Track.TrackId = InvoiceLine.TrackId
	left join Album
		on Album.AlbumId = Track.AlbumId
	left join Artist
		on Artist.ArtistId = Album.ArtistId
group by Artist.Name
order by [units sold] desc