SELECT 
    U.nome AS usuario,
    COUNT(H.musica_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(M.duracao_segundos / 60), 2) AS total_minutos
FROM
    SpotifyClone.usuarios AS U
        INNER JOIN
    SpotifyClone.history_reproducoes AS H ON U.usuario_id = H.usuario_id
        INNER JOIN
    SpotifyClone.musicas AS M ON M.musica_id = H.musica_id
GROUP BY usuario
ORDER BY usuario;
