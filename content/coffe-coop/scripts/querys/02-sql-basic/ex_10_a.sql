-- Exercise 10 - a
-- Settlements count and total net amount per farmer, September 2026

SELECT
    T4.document_number AS document,
    T4.first_name AS first_name,
    T4.last_name AS last_name,
    COUNT(T1.settlement_id) AS settlements_count,
    SUM(T1.net_amount) AS total_net_cop
FROM pay.settlements AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.delivery_id = T2.delivery_id
INNER JOIN farm.farms AS T3
    ON T2.farm_id = T3.farm_id
INNER JOIN farm.farmers AS T4
    ON T3.farmer_id = T4.farmer_id
WHERE T2.delivery_id LIKE 'DLV-202609%'
GROUP BY T4.farmer_id, T4.document_number, T4.first_name, T4.last_name
ORDER BY total_net_cop DESC;

/*
Pega aqui el resultado de PostgreSQL (maximo 10 filas + total de filas)
*/
