-- Exercise 05 - b
-- Collection points without a phone number, ordered by name

SELECT
    T1.point_name AS point,
    T1.address_line AS address,
    T1.municipality_code AS municipality_code
FROM buy.collection_points AS T1
WHERE T1.phone_number IS NULL
ORDER BY T1.point_name ASC;

/*
PEGUE AQUI EL RESULTADO
*/
