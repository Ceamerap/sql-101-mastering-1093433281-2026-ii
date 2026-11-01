-- Exercise 09 - c
-- Quality analyses: rejected analyses of 2026-09-30 with observations ordered by defects descending
SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.defects_pct AS defects_pct,
    T1.analyst_name AS analyst_name,
    T1.observations AS observations
FROM buy.quality_analyses AS T1
WHERE T1.analyzed_at >= '2026-09-30'
  AND T1.analyzed_at < '2026-10-01'
  AND T1.is_accepted = FALSE
  AND T1.observations IS NOT NULL
ORDER BY T1.defects_pct DESC;
/*
      analysis      |      delivery       | defects_pct |    analyst_name    |                observations                 
--------------------+---------------------+-------------+--------------------+---------------------------------------------
 QA-20260930-000104 | DLV-20260930-000214 |       19.54 | Carolina Rodríguez | Olor a fermento en la muestra.
 QA-20260930-000068 | DLV-20260930-000165 |       17.29 | Germán Peña        | Muestra tomada por duplicado.
 QA-20260930-000119 | DLV-20260930-000253 |       15.59 | Aníbal Pabón       | Exceso de impurezas y pasilla.
 QA-20260930-000086 | DLV-20260930-000147 |       13.21 | Erika Restrepo     | Olor a fermento en la muestra.
 QA-20260930-000113 | DLV-20260930-000223 |       12.94 | Reinaldo Bermúdez  | Café sobresecado, grano quebradizo.
 QA-20260930-000022 | DLV-20260930-000070 |        9.75 | Santiago Rojas     | Café con humedad alta, requiere más secado.
 QA-20260930-000018 | DLV-20260930-000006 |        7.88 | Nicolás Serrano    | Café con humedad alta, requiere más secado.
(7 filas)
*/
