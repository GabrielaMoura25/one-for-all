SELECT 
    N.nome_musica AS nome, 
    COUNT(R.usuario_id) AS reproducoes
FROM
    SpotifyClone.musicas AS N
        INNER JOIN
    SpotifyClone.history_reproducoes AS R ON N.musica_id = R.musica_id
        INNER JOIN
    SpotifyClone.usuarios AS U ON R.usuario_id = U.usuario_id
        INNER JOIN
    SpotifyClone.planos AS P ON P.plano_id = U.plano_id
WHERE
    P.plano = 'gratuito'
        OR P.plano = 'pessoal'
GROUP BY N.nome_musica
ORDER BY N.nome_musica;
