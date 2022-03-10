SELECT 
	art.name AS artista,
    alb.name AS album,
    COUNT(f.user_id) AS seguidores
FROM SpotifyClone.artist AS art
INNER JOIN SpotifyClone.album AS alb ON art.artist_id = alb.artist_id
INNER JOIN SpotifyClone.followers AS f ON art.artist_id = f.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;