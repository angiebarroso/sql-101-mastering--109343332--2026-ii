-- Exercise 10 - c
-- Norte de Santander municipalities with at least 5 farms

SELECT
    T1.municipality_name AS municipality,
    COUNT(T2.farm_id) AS farms_count,
    SUM(T2.total_area_ha) AS total_area_ha,
    ROUND(AVG(T2.altitude_masl), 2) AS avg_altitude_masl
FROM geo.municipalities AS T1
INNER JOIN farm.farms AS T2
    ON T1.municipality_code = T2.municipality_code
WHERE T1.department_code = '54'
GROUP BY T1.municipality_code, T1.municipality_name
HAVING COUNT(T2.farm_id) >= 5
ORDER BY avg_altitude_masl DESC;

/*
Pega aqui el resultado de PostgreSQL (maximo 10 filas + total de filas)
*/
