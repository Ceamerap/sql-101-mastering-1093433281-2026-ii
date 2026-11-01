-- Exercise 09 - b
-- Quality analyses: analyses of 2026-09-30 with moisture outside the 10%-12% range
SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisture_pct,
    T1.analyst_name AS analyst_name,
    T1.observations AS observations
FROM buy.quality_analyses AS T1
WHERE T1.analyzed_at >= '2026-09-30'
  AND T1.analyzed_at < '2026-10-01'
  AND T1.moisture_pct NOT BETWEEN 10 AND 12
ORDER BY T1.moisture_pct ASC;
/*
      analysis      |      delivery       | moisture_pct |    analyst_name    |                          observations                           
--------------------+---------------------+--------------+--------------------+-----------------------------------------------------------------
 QA-20260930-000119 | DLV-20260930-000253 |         8.39 | Aníbal Pabón       | Exceso de impurezas y pasilla.
 QA-20260930-000113 | DLV-20260930-000223 |         9.57 | Reinaldo Bermúdez  | Café sobresecado, grano quebradizo.
 QA-20260930-000105 | DLV-20260930-000260 |        12.01 | Daniel Betancur    | 
 QA-20260930-000078 | DLV-20260930-000093 |        12.01 | Heriberto Galvis   | 
 QA-20260930-000085 | DLV-20260930-000161 |        12.03 | Carlos Ospina      | Muestra limpia, color homogéneo.
 QA-20260930-000027 | DLV-20260930-000043 |        12.07 | Germán González    | Caficultor solicita contramuestra.
 QA-20260930-000076 | DLV-20260930-000116 |        12.08 | Germán González    | 
 QA-20260930-000045 | DLV-20260930-000104 |        12.11 | Ruth Polanía       | 
 QA-20260930-000093 | DLV-20260930-000178 |        12.11 | Nicolás Serrano    | Humedad en el límite superior, se recomienda mejorar el secado.
 QA-20260930-000017 | DLV-20260930-000012 |        12.15 | Natalia Trujillo   | 
...
(40 filas)
*/
