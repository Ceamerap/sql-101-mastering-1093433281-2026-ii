-- Exercise 05 - b
-- Incomplete rows: analyses without settlement or settlements without analysis
-- Explanation (do these rows make sense for the business? what about a rejected analysis?):
-- EXPLICACION: (escribe aqui con tus palabras)
SELECT
    T1.analysis_id AS analysis,
    T1.is_accepted AS accepted,
    T2.settlement_id AS settlement,
    T2.status AS settlement_status
FROM buy.quality_analyses AS T1
FULL JOIN pay.settlements AS T2
    ON T1.delivery_id = T2.delivery_id
WHERE (T1.delivery_id LIKE 'DLV-20260930-%' OR T2.delivery_id LIKE 'DLV-20260930-%')
  AND (T1.analysis_id IS NULL OR T2.settlement_id IS NULL)
ORDER BY T1.analysis_id ASC, T2.settlement_id ASC;
/*
      analysis      | accepted | settlement | settlement_status 
--------------------+----------+------------+-------------------
 QA-20260930-000005 | t        |            | 
 QA-20260930-000008 | t        |            | 
 QA-20260930-000009 | t        |            | 
 QA-20260930-000011 | t        |            | 
 QA-20260930-000013 | t        |            | 
 QA-20260930-000014 | t        |            | 
 QA-20260930-000018 | f        |            | 
 QA-20260930-000019 | t        |            | 
 QA-20260930-000020 | t        |            | 
 QA-20260930-000021 | t        |            | 
...
(75 filas)
*/
