-- Exercise 03 - a
-- RIGHT JOIN: all collection points with their deliveries of 2026-09-30

-- The date condition goes in the ON so points without deliveries are kept.
-- In the WHERE it would discard the NULL rows and behave like an INNER JOIN.
SELECT
    T2.point_name AS collection_point,
    T1.delivery_id AS delivery,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
RIGHT JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
   AND T1.delivery_id LIKE 'DLV-20260930-%'
ORDER BY T2.point_name ASC;

/*
Pega aqui el resultado de PostgreSQL (maximo 10 filas + total de filas)
*/
