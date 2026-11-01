-- Exercise 05 - c
-- Collection points that are inactive or have no phone number
SELECT
    T1.point_name AS point,
    T1.address_line AS address,
    T1.municipality_code AS municipality_code,
    T1.phone_number AS phone_number,
    T1.is_active AS is_active
FROM buy.collection_points AS T1
WHERE T1.is_active = FALSE
   OR T1.phone_number IS NULL
ORDER BY T1.point_name ASC;
/*
             point              |        address         | municipality_code | phone_number | is_active 
--------------------------------+------------------------+-------------------+--------------+-----------
 Punto de Compra Aipe 1         | Carrera 13 # 17-16     | 41016             |              | t
 Punto de Compra Anserma 1      | Calle 39 # 7-96        | 17042             |              | t
 Punto de Compra Apía 2         | Calle 9 # 14-56        | 66045             |              | f
 Punto de Compra Baraya 1       | Calle 1 # 19-77        | 41078             |              | t
 Punto de Compra Bochalema 1    | Carrera 25 # 47-89     | 54099             |              | t
 Punto de Compra Bosconia 1     | Carrera 26 # 26-43     | 20060             |              | t
 Punto de Compra Cajibío 1      | Carrera 15 # 32-45     | 19130             |              | t
 Punto de Compra Cisneros 1     | Calle 37 # 10-5        | 05190             |              | t
 Punto de Compra Coello 1       | Transversal 20 # 49-66 | 73200             |              | t
 Punto de Compra El Banco 1     | Calle 17 # 34-54       | 47245             | 6055026534   | f
...
(34 filas)
*/
