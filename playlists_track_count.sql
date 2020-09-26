select count(*) as CountOfTracks, Playlist.Name
from Playlist
	join PlaylistTrack
	on Playlist.PlaylistId = PlaylistTrack.PlaylistId
group by Playlist.PlaylistId, Playlist.Name
order by CountOfTracks

