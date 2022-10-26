SELECT 
    MIN(F.valor_plano) AS faturamento_minimo,
    MAX(F.valor_plano) AS faturamento_maximo,
    ROUND(AVG(F.valor_plano), 2) AS faturamento_medio,
    SUM(F.valor_plano) AS faturamento_total
FROM
    SpotifyClone.planos AS F
        INNER JOIN
    SpotifyClone.usuarios AS U ON F.plano_id = U.plano_id;
