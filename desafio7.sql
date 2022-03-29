SELECT 
	artist.name artista,
	album.title album,
    COUNT(follow.artist_id) seguidores
FROM 
    SpotifyClone.Artists artist,
    SpotifyClone.Albums album,
    SpotifyClone.Artist_users follow
WHERE 
	album.autor_id = artist.id
    AND
    album.autor_id = follow.artist_id
GROUP BY
	artist.name,
	album.title
ORDER BY
	seguidores DESC,
    artist.name,
    album.title;
