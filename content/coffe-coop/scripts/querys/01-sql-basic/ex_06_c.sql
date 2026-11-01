-- Exercise 06 - c
-- Farmers of Pamplona (54518) with inactive membership, oldest affiliation first

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.membership_date AS membership_date,
    T1.is_active AS is_active
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.is_active = FALSE
ORDER BY T1.membership_date ASC;

/*
PEGUE AQUI EL RESULTADO
*/
