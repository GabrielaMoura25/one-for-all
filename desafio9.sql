SELECT 
    COUNT(Q.musica_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.history_reproducoes AS Q
       INNER JOIN
    SpotifyClone.usuarios AS U ON U.usuario_id = Q.usuario_id
WHERE U.nome = "Barbara Liskov";
