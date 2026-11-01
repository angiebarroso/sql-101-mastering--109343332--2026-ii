-- Exercise 08 - b
-- Rejected deliveries of 2026-09-30 with average kg per bag

SELECT
    T1.delivery_id AS delivery,
    T1.farm_id AS farm_id,
    T1.gross_weight_kg AS gross_weight_kg,
    T1.bag_count AS bag_count,
    T1.gross_weight_kg / T1.bag_count AS avg_kg_per_bag
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
  AND T1.status = 'rejected';

/*
PEGUE AQUI EL RESULTADO
*/
