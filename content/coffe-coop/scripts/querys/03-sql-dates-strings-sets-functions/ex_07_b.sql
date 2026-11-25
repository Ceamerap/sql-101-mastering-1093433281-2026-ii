-- Exercise 07 - b
-- Municipality codes of Norte de Santander (54) with farmers or farms: UNION and UNION ALL

SELECT
    T1.municipality_code    AS municipality_code
FROM farm.farmers AS T1
WHERE T1.municipality_code LIKE '54%'
UNION
SELECT
    T2.municipality_code
FROM farm.farms AS T2
WHERE T2.municipality_code LIKE '54%'
ORDER BY municipality_code ASC;

/*
 municipality_code 
-------------------
 54001
 54003
 54051
 54099
 54109
 54125
 54128
 54172
 54174
 54206
...
(40 filas)
*/

SELECT
    T1.municipality_code    AS municipality_code
FROM farm.farmers AS T1
WHERE T1.municipality_code LIKE '54%'
UNION ALL
SELECT
    T2.municipality_code
FROM farm.farms AS T2
WHERE T2.municipality_code LIKE '54%'
ORDER BY municipality_code ASC;

/*
 municipality_code 
-------------------
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
...
(22365 filas)
*/
