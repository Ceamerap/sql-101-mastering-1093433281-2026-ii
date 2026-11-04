-- Exercise 07 - b
-- Quality analyses of 2026-09-30: cup score and moisture statistics
SELECT
    MIN(T1.cup_score) AS min_cup_score,
    MAX(T1.cup_score) AS max_cup_score,
    ROUND(AVG(T1.cup_score), 2) AS avg_cup_score,
    MIN(T1.moisture_pct) AS min_moisture_pct,
    MAX(T1.moisture_pct) AS max_moisture_pct
FROM buy.quality_analyses AS T1
WHERE T1.analyzed_at >= '2026-09-30'
  AND T1.analyzed_at < '2026-10-01';
/*
 min_cup_score | max_cup_score | avg_cup_score | min_moisture_pct | max_moisture_pct 
---------------+---------------+---------------+------------------+------------------
         77.17 |         87.28 |         82.91 |             8.39 |            17.68
(1 fila)
*/
