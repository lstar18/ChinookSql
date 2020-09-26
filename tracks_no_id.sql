select tr.Name as TrackName, al.Title as AlbumTitle, md.Name as MediaType, g.Name as Genre
from Track tr
	join Album al
	on tr.AlbumId = al.AlbumId
		join MediaType md
		on tr.MediaTypeId = md.MediaTypeId
			join Genre g
			on tr.GenreId = g.GenreId