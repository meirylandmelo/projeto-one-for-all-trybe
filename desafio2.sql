SELECT 
    COUNT(DISTINCT s.song_id) AS cancoes, 
    COUNT(DISTINCT art.artist_id) AS artistas, 
    COUNT(DISTINCT alb.album_id) AS albuns
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.album AS alb ON alb.album_id = s.album_id
INNER JOIN SpotifyClone.artist AS art ON art.artist_id = alb.artist_id;