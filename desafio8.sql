SELECT 
	artist.name artista,
	album.title album
FROM 
    SpotifyClone.Artists artist,
    SpotifyClone.Albums album
WHERE 
	album.autor_id = artist.id
    AND
    artist.name = 'Walter Phoenix';