-- Exercise 03 - a
-- Certifications: name, issuer and premium per kg, highest first

SELECT
    T1.certification_name AS certification,
    T1.issuing_body AS issuer,
    T1.premium_per_kg AS premium_per_kg_cop
FROM farm.certifications AS T1
ORDER BY T1.premium_per_kg DESC;

/*
PEGUE AQUI EL RESULTADO
*/
