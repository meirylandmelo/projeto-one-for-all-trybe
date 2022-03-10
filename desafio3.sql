SELECT 
	u.user_name AS usuario,
    COUNT(h.song_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(s.duration) / 60, 2) AS total_minutos
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.history AS h ON u.user_id = h.user_id
INNER JOIN SpotifyClone.songs AS s ON s.song_id = h.song_id
GROUP BY u.user_name
ORDER BY u.user_name;