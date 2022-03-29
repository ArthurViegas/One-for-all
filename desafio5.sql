SELECT 
	msc.title as cancao,
    count(DISTINCT hist.play_date) as reproducoes
FROM 
    SpotifyClone.Musics as msc,
    SpotifyClone.Music_users as hist
WHERE msc.id = hist.music_id
GROUP BY 
	msc.title
ORDER BY
	reproducoes DESC,
    cancao ASC
LIMIT 2;