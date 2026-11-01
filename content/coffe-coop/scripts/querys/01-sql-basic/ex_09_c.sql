-- Exercise 09 - c
-- Not accepted analyses of 2026-09-30 with observations, highest defects first

SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.defects_pct AS defects_pct,
    T1.observations AS observations
FROM buy.quality_analyses AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
  AND T1.is_accepted = FALSE
  AND T1.observations IS NOT NULL
ORDER BY T1.defects_pct DESC;

/*
PEGUE AQUI EL RESULTADO
*/
