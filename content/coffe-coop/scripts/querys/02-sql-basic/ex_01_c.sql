-- Exercise 01 - c
-- Deliveries of 2026-09-30 with farm and collection point

SELECT
    T1.delivery_id AS delivery,
    T2.farm_name AS farm,
    T3.point_name AS collection_point,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
INNER JOIN farm.farms AS T2
    ON T1.farm_id = T2.farm_id
INNER JOIN buy.collection_points AS T3
    ON T1.collection_point_id = T3.collection_point_id
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
ORDER BY T3.point_name ASC, T1.gross_weight_kg DESC;

/*
Pega aqui el resultado de PostgreSQL (maximo 10 filas + total de filas)
*/
