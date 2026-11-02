-- Exercise 07 - a
-- Daily summary of deliveries on 2026-09-30

SELECT
    COUNT(*) AS total_deliveries,
    SUM(T1.gross_weight_kg) AS total_gross_kg,
    ROUND(AVG(T1.gross_weight_kg), 2) AS avg_gross_kg,
    COUNT(DISTINCT T1.farm_id) AS farms_delivering
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%';

/*
Pega aqui el resultado de PostgreSQL (maximo 10 filas + total de filas)
*/
