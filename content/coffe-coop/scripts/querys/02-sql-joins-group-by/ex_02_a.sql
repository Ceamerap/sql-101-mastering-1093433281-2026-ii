-- Exercise 02 - a
-- Farmers of Pamplona (54518) with their farm, including farmers without a farm
SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T2.farm_name AS farm
FROM farm.farmers AS T1
LEFT JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE T1.municipality_code = '54518'
ORDER BY T1.last_name ASC, T1.first_name ASC;
/*
  document  |    first_name     |     last_name      |       farm       
------------+-------------------+--------------------+------------------
 230971064  | Manuel            | Agudelo Jiménez    | La Selva
 230971064  | Manuel            | Agudelo Jiménez    | El Jardín
 230971064  | Manuel            | Agudelo Jiménez    | Las Acacias
 768461420  | Marleny           | Agudelo Sandoval   | El Paraíso
 768461420  | Marleny           | Agudelo Sandoval   | El Diamante
 931079279  | Edilma            | Álvarez Bonilla    | El Triunfo
 931079279  | Edilma            | Álvarez Bonilla    | La Argentina
 463842401  | Rocío             | Álvarez Cárdenas   | La Cumbre
 463842401  | Rocío             | Álvarez Cárdenas   | Bellavista
 463842401  | Rocío             | Álvarez Cárdenas   | El Encanto
...
(370 filas)
*/
