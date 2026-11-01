-- Exercise 08 - c
-- Deliveries of 2026-09-30 of type wet_parchment or cherry, heaviest first

SELECT
    T1.delivery_id AS delivery,
    T1.farm_id AS farm_id,
    T1.coffee_type AS coffee_type,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
  AND T1.coffee_type IN ('wet_parchment', 'cherry')
ORDER BY T1.gross_weight_kg DESC;

/*
PEGUE AQUI EL RESULTADO
*/
