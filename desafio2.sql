SELECT 
  COUNT(nome_musica) AS cancoes,
  COUNT(DISTINCT nome_artista) AS artistas,
  COUNT(DISTINCT nome_album) AS albuns
FROM
  SpotifyClone.musicas AS cancoes
    INNER JOIN
  SpotifyClone.albuns AS albuns ON albuns.album_id = cancoes.album_id
    INNER JOIN
  SpotifyClone.artistas AS artistas ON artistas.artista_id = albuns.artista_id;
