-- Exercise 04 - a
-- Top 10 longest closed certification periods of farms in Pamplona (54518)

SELECT
    T2.farm_name                        AS farm,
    T3.certification_name               AS certification,
    T1.start_date                       AS start_date,
    T1.end_date                         AS end_date,
    T1.end_date - T1.start_date         AS duration_days,
    AGE(T1.end_date, T1.start_date)     AS duration
FROM farm.farm_certifications AS T1
INNER JOIN farm.farms AS T2
    ON T1.farm_id = T2.farm_id
INNER JOIN farm.certifications AS T3
    ON T1.certification_id = T3.certification_id
WHERE T2.municipality_code = '54518'
  AND T1.end_date IS NOT NULL
ORDER BY duration_days DESC, farm ASC
LIMIT 10;

/*
     farm      |    certification    | start_date |  end_date  | duration_days | duration 
---------------+---------------------+------------+------------+---------------+----------
 Bellavista    | 4C                  | 2021-11-12 | 2024-11-12 |          1096 | 3 years
 Bellavista    | 4C                  | 2015-08-16 | 2018-08-16 |          1096 | 3 years
 Bellavista    | 4C                  | 2018-09-21 | 2021-09-21 |          1096 | 3 years
 Buenavista    | Bird Friendly       | 2017-03-08 | 2020-03-08 |          1096 | 3 years
 Cafetal Viejo | Rainforest Alliance | 2023-02-01 | 2026-02-01 |          1096 | 3 years
 El Arrayán    | Rainforest Alliance | 2015-03-22 | 2018-03-22 |          1096 | 3 years
 El Arrayán    | Rainforest Alliance | 2018-05-11 | 2021-05-11 |          1096 | 3 years
 El Arrayán    | Rainforest Alliance | 2021-06-16 | 2024-06-16 |          1096 | 3 years
 El Bosque     | C.A.F.E. Practices  | 2014-01-17 | 2017-01-17 |          1096 | 3 years
 El Diamante   | 4C                  | 2015-01-09 | 2018-01-09 |          1096 | 3 years
(10 filas)
*/
