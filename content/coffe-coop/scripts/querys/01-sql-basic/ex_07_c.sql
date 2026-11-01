-- Exercise 07 - c
-- Farms: Pamplona (54518) farms with missing latitude or longitude
SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T1.latitude AS latitude,
    T1.longitude AS longitude
FROM farm.farms AS T1
WHERE T1.municipality_code = '54518'
  AND (T1.latitude IS NULL OR T1.longitude IS NULL)
ORDER BY T1.farm_name ASC;
/*
       farm       |    rural_district    | latitude | longitude 
------------------+----------------------+----------+-----------
 Altamira         | El Alizal            |          |          
 Bella Vista Alta | Sabaneta Baja        |          |          
 Bella Vista Alta | Alto Grande          |          |          
 Bella Vista Alta | El Rosal             |          |          
 Bella Vista Alta | Sabaneta Baja        |          |          
 Bellavista       | Cunuba               |          |          
 Bellavista       | Peñas                |          |          
 Bellavista       | Alto Grande          |          |          
 Bellavista       | San José De Tonchala |          |          
 Cafetal Viejo    | La Legua             |          |          
...
(153 filas)
*/
