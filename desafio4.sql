SELECT usr.name usuario, 
   CASE 
   WHEN MAX(YEAR(mu.play_date)) < 2021 THEN 'Usuário inativo'
   ELSE 'Usuário ativo'
   END AS condicao_usuario
FROM 
	Users usr,
	Music_users mu
WHERE usr.id = mu.user_id
GROUP BY usr.name
ORDER BY usr.name ASC;
