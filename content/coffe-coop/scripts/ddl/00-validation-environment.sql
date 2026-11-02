-- ##################################################
-- COFFEE COOP ENVIRONMENT VALIDATION
-- ##################################################

-- 01. Tables per schema
SELECT table_schema, COUNT(*) AS total_tables
FROM information_schema.tables
WHERE table_schema IN ('geo', 'farm', 'buy', 'pay')
GROUP BY table_schema
ORDER BY table_schema;

-- 02. Constraints per type
SELECT 
    CASE c.contype
        WHEN 'p' THEN 'PRIMARY KEY'
        WHEN 'f' THEN 'FOREIGN KEY'
        WHEN 'u' THEN 'UNIQUE'
        WHEN 'c' THEN 'CHECK'
    END AS constraint_type,
    COUNT(*) AS total
FROM pg_constraint c
JOIN pg_namespace n ON n.oid = c.connamespace
WHERE n.nspname IN ('geo', 'farm', 'buy', 'pay')
GROUP BY c.contype
ORDER BY c.contype;
