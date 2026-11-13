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
  document  |     first_name      |       last_name       | settlements_count | total_net_cop
------------+---------------------+-----------------------+-------------------+---------------
 30933664   | Cristian            | GarcÝa Contreras      |                 3 |   15493357.77
 1071161211 | Alba                | Mu±oz RamÝrez         |                 2 |   14576631.94
 526195285  | Jairo               | Valencia Zapata       |                 2 |   14528146.87
 337551898  | Alejandro Mateo     | Fl¾rez Uribe          |                 2 |   14460246.30
 854161034  | Luisa Martha        | Caicedo Romero        |                 1 |   13335230.83
 782091682  | Luisa               | Duque Torres          |                 2 |   12843595.73
 549378351  | Dora                | Galvis Ospina         |                 3 |   12821153.68
 182907696  | Jorge               | Duarte Zapata         |                 2 |   12777306.01
 446732017  | Reinaldo            | Ruiz CuÚllar          |                 2 |   12310076.05
 628772920  | Aura                | Osorio Medina         |                 2 |   12133626.08
 860889225  | Wilmer              | Barrera Vera          |                 2 |   12078718.23
 610231611  | Orlando             | Pe±a Vera             |                 1 |   12005420.07
 329350370  | RubÚn               | Quintero Chamorro     |                 3 |   11967062.39
 894974935  | Alejandro           | Ni±o Fl¾rez           |                 2 |   11914996.69
 1105751836 | Antonio             | Moreno Rojas          |                 3 |   11712814.76
 967037103  | Natalia             | Correa Jaimes         |                 2 |   11531226.36
 695945885  | Carolina            | Correa Pinz¾n         |                 2 |   11381891.73
 420092042  | Samuel              | Caicedo Mora          |                 2 |   11204499.77
 1119357624 | Yesenia Nubia       | Montoya Giraldo       |                 1 |   11114680.80
 372230229  | Sandra              | Rojas Calder¾n        |                 2 |   11080803.26
-- Más  --
esta muy largo 
*/