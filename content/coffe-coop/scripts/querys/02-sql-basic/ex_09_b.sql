-- Exercise 09 - b
-- Collection points with more than 1000 kg gross on 2026-09-30

SELECT
    T2.point_name AS collection_point,
    SUM(T1.gross_weight_kg) AS total_gross_kg
FROM buy.deliveries AS T1
INNER JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
GROUP BY T2.point_name
HAVING SUM(T1.gross_weight_kg) > 1000
ORDER BY total_gross_kg DESC;

/*
Pega aqui el resultado de PostgreSQL (maximo 10 filas + total de filas)
*/
