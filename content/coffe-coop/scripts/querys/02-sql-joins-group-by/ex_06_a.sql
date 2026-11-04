-- Exercise 06 - a
-- Pairs of farms of Pamplona (54518) located in the same rural district
SELECT
    T1.rural_district AS rural_district,
    T1.farm_name AS farm_a,
    T2.farm_name AS farm_b
FROM farm.farms AS T1
INNER JOIN farm.farms AS T2
    ON T1.rural_district = T2.rural_district
   AND T1.municipality_code = T2.municipality_code
   AND T1.farm_id < T2.farm_id
WHERE T1.municipality_code = '54518'
ORDER BY T1.rural_district ASC, T1.farm_id ASC, T2.farm_id ASC;
/*
    rural_district    |      farm_a      |      farm_b      
----------------------+------------------+------------------
 Alcaparral           | La Floresta      | Buenavista
 Alcaparral           | La Floresta      | San José
 Alcaparral           | La Floresta      | Los Pinos
 Alcaparral           | La Floresta      | Miraflores
 Alcaparral           | La Floresta      | Monte Alto
 Alcaparral           | La Floresta      | La Granja
 Alcaparral           | Buenavista       | San José
 Alcaparral           | Buenavista       | Los Pinos
 Alcaparral           | Buenavista       | Miraflores
 Alcaparral           | Buenavista       | Monte Alto
...
(2406 filas)
*/
