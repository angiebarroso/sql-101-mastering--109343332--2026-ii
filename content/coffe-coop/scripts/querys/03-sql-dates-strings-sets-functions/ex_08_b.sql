-- Exercise 08 - b
-- Norte de Santander municipalities with farms but NO collection point (EXCEPT)

SELECT
    T2.municipality_code AS municipality_code,
    T2.municipality_name AS municipality
FROM farm.farms AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
WHERE T2.department_code = '54'
EXCEPT
SELECT
    T4.municipality_code,
    T4.municipality_name
FROM buy.collection_points AS T3
INNER JOIN geo.municipalities AS T4
    ON T3.municipality_code = T4.municipality_code
WHERE T4.department_code = '54'
ORDER BY municipality ASC;

/*
 municipality_code |   municipality
-------------------+-------------------
 54003             | ┴brego
 54051             | Arboledas
 54109             | Bucarasica
 54128             | Cßchira
 54125             | Cßcota
 54174             | Chitagß
 54001             | C·cuta
 54223             | Cucutilla
 54239             | Durania
 54250             | El Tarra
 54313             | Gramalote
 54344             | HacarÝ
 54385             | La Esperanza
 54398             | La Playa
 54377             | Labateca
 54405             | Los Patios
 54418             | Lourdes
 54480             | Mutiscua
 54518             | Pamplona
 54520             | Pamplonita
 54553             | Puerto Santander
 54599             | Ragonvalia
 54660             | Salazar
 54670             | San Calixto
 54673             | San Cayetano
 54680             | Santiago
 54743             | Silos
 54800             | Teorama
 54810             | Tib·
 54820             | Toledo
 54871             | Villa Caro
 54874             | Villa Del Rosario
(32 rows)
*/
