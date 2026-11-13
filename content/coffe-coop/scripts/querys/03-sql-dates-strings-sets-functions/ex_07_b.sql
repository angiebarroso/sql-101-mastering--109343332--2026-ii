-- Exercise 07 - b
-- Norte de Santander municipality codes (farmers + farms): UNION vs UNION ALL

-- Version 1: UNION (removes duplicates)
SELECT
    T1.municipality_code AS municipality_code
FROM farm.farmers AS T1
WHERE T1.municipality_code LIKE '54%'
UNION
SELECT
    T2.municipality_code
FROM farm.farms AS T2
WHERE T2.municipality_code LIKE '54%'
ORDER BY municipality_code ASC;

-- Version 2: UNION ALL (keeps duplicates)
SELECT
    T1.municipality_code AS municipality_code
FROM farm.farmers AS T1
WHERE T1.municipality_code LIKE '54%'
UNION ALL
SELECT
    T2.municipality_code
FROM farm.farms AS T2
WHERE T2.municipality_code LIKE '54%'
ORDER BY municipality_code ASC;

/*
 municipality_code
-------------------
 54001
 54003
 54051
 54099
 54109
 54125
 54128
 54172
 54174
 54206
 54223
 54239
 54245
 54250
 54261
 54313
 54344
 54347
 54377
 54385
 54398
 54405
 54418
 54480
 54498
 54518
 54520
 54553
 54599
 54660
 54670
 54673
 54680
 54720
 54743
 54800
 54810
 54820
 54871
 54874
(40 rows)

*/