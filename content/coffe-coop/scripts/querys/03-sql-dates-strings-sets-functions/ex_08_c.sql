-- Exercise 08 - c
-- Farms of Pamplona (54518) that delivered coffee in 2025 but not in 2026

SELECT
    T1.farm_name        AS farm,
    T1.rural_district   AS rural_district
FROM farm.farms AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.farm_id = T2.farm_id
WHERE T1.municipality_code = '54518'
  AND EXTRACT(year FROM T2.delivered_at) = 2025
EXCEPT
SELECT
    T3.farm_name,
    T3.rural_district
FROM farm.farms AS T3
INNER JOIN buy.deliveries AS T4
    ON T3.farm_id = T4.farm_id
WHERE T3.municipality_code = '54518'
  AND EXTRACT(year FROM T4.delivered_at) = 2026
ORDER BY farm ASC, rural_district ASC;

/*
     farm      |    rural_district    
---------------+----------------------
 Agua Bonita   | García
 Altamira      | El Alizal
 Bellavista    | Cunuba
 Cafetal Viejo | Caima
 Cafetal Viejo | Cunuba
 Cafetal Viejo | San José De Tonchala
 El Arrayán    | Iscaligua
 El Brillante  | Peñas
 El Diamante   | San José De Tonchala
 El Encanto    | Cunuba
...
(79 filas)
*/
