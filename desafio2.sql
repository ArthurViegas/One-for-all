SELECT
COUNT(DISTINCT cancoes.id) AS cancoes,
COUNT(DISTINCT artistas.id) AS artistas,
COUNT(distinct albuns.id) AS albuns
FROM 
SpotifyClone.Musics AS cancoes,
SpotifyClone.Artists AS artistas,
SpotifyClone.Albums AS albuns;