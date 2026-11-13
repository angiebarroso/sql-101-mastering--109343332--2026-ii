-- Exercise 05 - c
-- Department search: exact text vs UPPER comparison (two queries)

-- Query 1: exact text in the WHERE
SELECT
    T1.department_code AS code,
    T1.department_name AS department
FROM geo.departments AS T1
WHERE T1.department_name = 'Norte de Santander';

-- Query 2: comparing UPPER on both sides
SELECT
    T1.department_code AS code,
    T1.department_name AS department
FROM geo.departments AS T1
WHERE UPPER(T1.department_name) = UPPER('Norte de Santander');

/*
 code | department
------+------------
(0 rows)
---Query 2:
 code |     department
------+--------------------
 54   | Norte De Santander
(1 row)

*/
