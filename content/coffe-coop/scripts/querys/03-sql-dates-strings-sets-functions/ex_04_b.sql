-- Exercise 04 - b
-- Active certifications of farms in Pamplona (54518) with 2 or more years at 2026-09-30

SELECT
    T2.farm_name                                                AS farm,
    T3.certification_name                                       AS certification,
    T1.start_date                                               AS start_date,
    DATE_PART('year', AGE(DATE '2026-09-30', T1.start_date))    AS years_active
FROM farm.farm_certifications AS T1
INNER JOIN farm.farms AS T2
    ON T1.farm_id = T2.farm_id
INNER JOIN farm.certifications AS T3
    ON T1.certification_id = T3.certification_id
WHERE T2.municipality_code = '54518'
  AND T1.end_date IS NULL
  AND DATE_PART('year', AGE(DATE '2026-09-30', T1.start_date)) >= 2
ORDER BY years_active DESC, farm ASC;

/*
     farm      |    certification    | start_date | years_active 
---------------+---------------------+------------+--------------
 El Arrayán    | Rainforest Alliance | 2024-07-29 |            2
 El Danubio    | Fairtrade           | 2024-01-24 |            2
 El Diamante   | 4C                  | 2024-04-28 |            2
 El Diamante   | 4C                  | 2023-12-19 |            2
 El Guamo      | 4C                  | 2024-07-06 |            2
 El Porvenir   | Fairtrade           | 2024-09-23 |            2
 El Porvenir   | Rainforest Alliance | 2024-04-24 |            2
 El Recuerdo   | Orgánico            | 2024-01-18 |            2
 El Silencio   | Rainforest Alliance | 2024-05-10 |            2
 La Aurora     | Rainforest Alliance | 2024-02-11 |            2
...
(18 filas)
*/
