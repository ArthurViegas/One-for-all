SELECT 
	MIN(plan.price) as faturamento_minimo,
    MAX(plan.price) as faturamento_maximo,
    ROUND(AVG(plan.price), 2) as faturamento_medio,
    SUM(plan.price) as faturamento_total
FROM 
    SpotifyClone.Plans plan,
    SpotifyClone.Users usr
WHERE
	plan.id = usr.plan_id;
