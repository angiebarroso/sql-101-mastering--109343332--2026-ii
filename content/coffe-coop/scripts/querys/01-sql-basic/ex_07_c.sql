-- Exercise 07 - c
-- Farms of Pamplona (54518) without coordinates (null latitude or longitude)

SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T1.latitude AS latitude,
    T1.longitude AS longitude
FROM farm.farms AS T1
WHERE T1.municipality_code = '54518'
  AND (T1.latitude IS NULL OR T1.longitude IS NULL);

/*
PEGUE AQUI EL RESULTADO
*/
