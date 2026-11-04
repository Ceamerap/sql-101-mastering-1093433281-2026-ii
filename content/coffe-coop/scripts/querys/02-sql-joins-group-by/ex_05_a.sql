-- Exercise 05 - a
-- FULL JOIN between quality analyses and settlements of the deliveries of 2026-09-30
SELECT
    T1.analysis_id AS analysis,
    T1.is_accepted AS accepted,
    T2.settlement_id AS settlement,
    T2.status AS settlement_status
FROM buy.quality_analyses AS T1
FULL JOIN pay.settlements AS T2
    ON T1.delivery_id = T2.delivery_id
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
   OR T2.delivery_id LIKE 'DLV-20260930-%'
ORDER BY T1.analysis_id ASC, T2.settlement_id ASC;
/*
      analysis      | accepted |     settlement      | settlement_status 
--------------------+----------+---------------------+-------------------
 QA-20260930-000001 | t        | STL-20261001-000006 | pending
 QA-20260930-000002 | t        | STL-20261002-000030 | paid
 QA-20260930-000003 | t        | STL-20261001-000052 | paid
 QA-20260930-000004 | t        | STL-20261002-000018 | pending
 QA-20260930-000005 | t        |                     | 
 QA-20260930-000006 | t        | STL-20261002-000004 | pending
 QA-20260930-000007 | t        | STL-20261002-000005 | paid
 QA-20260930-000008 | t        |                     | 
 QA-20260930-000009 | t        |                     | 
 QA-20260930-000010 | t        | STL-20261002-000024 | paid
...
(151 filas)
*/
