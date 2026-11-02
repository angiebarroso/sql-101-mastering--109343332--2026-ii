-- Exercise 07 - c
-- Farmers of 54518: total vs. with registered email

-- COUNT(*) counts every row; COUNT(column) ignores NULLs, so the two differ.
SELECT
    COUNT(*) AS total_farmers,
    COUNT(T1.email) AS farmers_with_email
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518';

/*
Pega aqui el resultado de PostgreSQL (maximo 10 filas + total de filas)
*/
