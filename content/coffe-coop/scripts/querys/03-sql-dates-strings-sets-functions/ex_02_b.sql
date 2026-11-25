-- Exercise 02 - b
-- Farmers of Pamplona (54518) by gender: count and average age in years at 2026-09-30

SELECT
    T1.gender                                                                       AS gender,
    COUNT(*)                                                                        AS farmers_count,
    ROUND(AVG(DATE_PART('year', AGE(DATE '2026-09-30', T1.birth_date)))::NUMERIC, 2) AS avg_age_years
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
GROUP BY T1.gender
ORDER BY T1.gender ASC;

/*
 gender | farmers_count | avg_age_years 
--------+---------------+---------------
 F      |           111 |         49.59
 M      |           115 |         51.31
 O      |             4 |         46.25
(3 filas)
*/
