SELECT 
	s.name AS cancao,
    COUNT(DISTINCT h.user_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.history AS h ON s.song_id = h.song_id
GROUP BY s.name
ORDER BY reproducoes DESC LIMIT 2;