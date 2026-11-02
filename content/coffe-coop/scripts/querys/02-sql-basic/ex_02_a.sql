-- Exercise 02 - a
-- Farmers of 54518 with farm name, including those without a farm

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T2.farm_name AS farm
FROM farm.farmers AS T1
LEFT JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE T1.municipality_code = '54518';

/*
Pega aqui el resultado de PostgreSQL (maximo 10 filas + total de filas)
*/
