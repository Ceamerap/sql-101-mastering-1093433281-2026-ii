-- Exercise 10 - c
-- Norte de Santander municipalities with at least 5 farms: farms, total area and average altitude
-- Explanation (which condition went to WHERE, which to HAVING, and why):
-- EXPLICACION: (escribe aqui con tus palabras)
SELECT
    T1.municipality_name AS municipality,
    COUNT(T2.farm_id) AS farms_count,
    SUM(T2.total_area_ha) AS total_area_ha,
    ROUND(AVG(T2.altitude_masl), 2) AS avg_altitude_masl
FROM geo.municipalities AS T1
INNER JOIN farm.farms AS T2
    ON T1.municipality_code = T2.municipality_code
WHERE T1.department_code = '54'
GROUP BY T1.municipality_code, T1.municipality_name
HAVING COUNT(T2.farm_id) >= 5
ORDER BY avg_altitude_masl DESC;
/*
   municipality    | farms_count | total_area_ha | avg_altitude_masl 
-------------------+-------------+---------------+-------------------
 Ragonvalia        |         377 |        990.30 |           1688.35
 Cucutilla         |         315 |        806.32 |           1674.67
 Cácota            |         345 |        950.47 |           1670.86
 Labateca          |         358 |       1103.31 |           1669.03
 Ábrego            |         330 |        900.02 |           1666.75
 Puerto Santander  |         323 |        803.82 |           1666.08
 Cúcuta            |         308 |        849.52 |           1657.92
 Santiago          |         356 |       1013.47 |           1654.08
 Pamplonita        |         326 |        901.48 |           1653.36
 Pamplona          |         368 |       1062.41 |           1652.74
...
(40 filas)
*/
