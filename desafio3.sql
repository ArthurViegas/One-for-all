SELECT
	usr.`name` usuario,
	count(DISTINCT `history`.music_id) qtde_musicas_ouvidas,
	ROUND(SUM(msc.duration_sec / 60), 2) total_minutos
FROM
	Users usr,
	Music_users `history`,
  Musics msc
WHERE 
  usr.id = `history`.user_id
AND
  `history`.music_id = msc.id
GROUP BY
  usr.`name`;
