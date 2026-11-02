-- Exercise 09 - a
-- Departments with more than 40 municipalities

SELECT
    T1.department_name AS department,
    COUNT(T2.municipality_code) AS municipalities_count
FROM geo.departments AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.department_code = T2.department_code
GROUP BY T1.department_name
HAVING COUNT(T2.municipality_code) > 40
ORDER BY municipalities_count DESC;

/*
Pega aqui el resultado de PostgreSQL (maximo 10 filas + total de filas)
*/
