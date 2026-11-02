-- Exercise 08 - a
-- Municipalities count per department

SELECT
    T1.department_name AS department,
    COUNT(T2.municipality_code) AS municipalities_count
FROM geo.departments AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.department_code = T2.department_code
GROUP BY T1.department_name
ORDER BY municipalities_count DESC;

/*
Pega aqui el resultado de PostgreSQL (maximo 10 filas + total de filas)
*/
