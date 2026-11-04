-- Exercise 03 - a
-- Collection points with their deliveries of 2026-09-30, including points without deliveries
SELECT
    T2.point_name AS collection_point,
    T1.delivery_id AS delivery,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
RIGHT JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
   AND T1.delivery_id LIKE 'DLV-20260930-%'
ORDER BY T2.point_name ASC, T1.delivery_id ASC;
/*
               collection_point               |      delivery       | gross_weight_kg 
----------------------------------------------+---------------------+-----------------
 Punto de Compra Abriaquí 1                   | DLV-20260930-000164 |           48.18
 Punto de Compra Acevedo 1                    | DLV-20260930-000028 |          258.00
 Punto de Compra Acevedo 1                    | DLV-20260930-000094 |          246.96
 Punto de Compra Acevedo 1                    | DLV-20260930-000292 |          122.13
 Punto de Compra Agrado 1                     | DLV-20260930-000080 |          120.11
 Punto de Compra Agrado 1                     | DLV-20260930-000202 |          246.62
 Punto de Compra Aipe 1                       |                     |                
 Punto de Compra Aipe 2                       |                     |                
 Punto de Compra Alcalá 1                     | DLV-20260930-000075 |           61.99
 Punto de Compra Aldana 1                     | DLV-20260930-000137 |          209.02
...
(338 filas)
*/
