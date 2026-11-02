-- Exercise 08 - b
-- Deliveries and gross weight per coffee type on 2026-09-30

SELECT
    T1.coffee_type AS coffee_type,
    COUNT(*) AS deliveries_count,
    SUM(T1.gross_weight_kg) AS total_gross_kg
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
GROUP BY T1.coffee_type
ORDER BY total_gross_kg DESC;

/*
Pega aqui el resultado de PostgreSQL (maximo 10 filas + total de filas)
*/
