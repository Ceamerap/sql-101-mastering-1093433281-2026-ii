-- Exercise 07 - a
-- Phone directory: farmers of Pamplona (54518) and collection points of Norte de Santander (54)

SELECT
    'farmer'                                    AS contact_type,
    CONCAT(T1.first_name, ' ', T1.last_name)    AS contact_name,
    T1.phone_number                             AS phone
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
UNION
SELECT
    'collection_point',
    T2.point_name,
    T2.phone_number
FROM buy.collection_points AS T2
WHERE T2.municipality_code LIKE '54%'
  AND T2.phone_number IS NOT NULL
ORDER BY contact_type ASC, contact_name ASC;

/*
   contact_type   |           contact_name            |   phone    
------------------+-----------------------------------+------------
 collection_point | Punto de Compra Chinácota 1       | 6018933221
 collection_point | Punto de Compra Convención 1      | 6013582031
 collection_point | Punto de Compra El Carmen 1       | 6026129845
 collection_point | Punto de Compra El Zulia 1        | 6014148127
 collection_point | Punto de Compra Herrán 1          | 6017529911
 collection_point | Punto de Compra Herrán 2          | 6079941701
 collection_point | Punto de Compra Ocaña 1           | 6032506284
 collection_point | Punto de Compra Sardinata 1       | 6039449180
 farmer           | Abelardo Pérez Castro             | 3245612074
 farmer           | Adriana Mosquera Ospina           | 3118036799
...
(238 filas)
*/
