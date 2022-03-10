SELECT 
	s.name AS nome,
    COUNT(h.user_id) AS reproducoes
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.user AS u ON u.user_id = h.user_id
INNER JOIN SpotifyClone.songs AS s ON s.song_id = h.song_id
WHERE u.plan_id = 1 OR u.plan_id = 4
GROUP BY s.name
ORDER BY s.name;