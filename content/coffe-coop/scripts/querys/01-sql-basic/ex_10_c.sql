-- Exercise 10 - c
-- Settlements of 2026-09-30 without deductions, with a check of the gross value

SELECT
    T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.net_weight_kg AS net_weight_kg,
    T1.price_per_kg_applied AS price_per_kg,
    T1.deductions_amount AS deductions_cop,
    T1.gross_amount AS gross_cop,
    T1.net_weight_kg * T1.price_per_kg_applied AS check_gross_cop
FROM pay.settlements AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
  AND T1.deductions_amount = 0;

/*
PEGUE AQUI EL RESULTADO

EXPLICACION (escribala con sus propias palabras en el .md):
gross_amount es una columna GENERATED: la base de datos la calcula sola como
net_weight_kg * price_per_kg_applied. Por eso check_gross_cop da el mismo valor.
*/
