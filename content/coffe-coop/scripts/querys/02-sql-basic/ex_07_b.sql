-- Exercise 07 - b
-- Cup score and moisture summary of analyses on 2026-09-30

SELECT
    MIN(T1.cup_score) AS min_cup_score,
    MAX(T1.cup_score) AS max_cup_score,
    ROUND(AVG(T1.cup_score), 2) AS avg_cup_score,
    MIN(T1.moisture_pct) AS min_moisture_pct,
    MAX(T1.moisture_pct) AS max_moisture_pct
FROM buy.quality_analyses AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%';

/*
Pega aqui el resultado de PostgreSQL (maximo 10 filas + total de filas)
*/
