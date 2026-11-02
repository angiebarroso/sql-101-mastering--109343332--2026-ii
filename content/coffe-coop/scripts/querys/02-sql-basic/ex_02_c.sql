-- Exercise 02 - c
-- Deliveries of 2026-09-30 with analysis and cup score (including unanalyzed)

SELECT
    T1.delivery_id AS delivery,
    T2.analysis_id AS analysis,
    T2.cup_score AS cup_score
FROM buy.deliveries AS T1
LEFT JOIN buy.quality_analyses AS T2
    ON T1.delivery_id = T2.delivery_id
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
ORDER BY T1.delivery_id ASC;

/*
Pega aqui el resultado de PostgreSQL (maximo 10 filas + total de filas)
*/
