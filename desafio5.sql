SELECT 
    C.nome_musica AS cancao, COUNT(R.musica_id) AS reproducoes
FROM
    SpotifyClone.musicas AS C
        INNER JOIN
    SpotifyClone.history_reproducoes AS R ON C.musica_id = R.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC , cancao
LIMIT 2;
