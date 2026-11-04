-- Exercise 03 - b
-- Collection points that did not receive any delivery on 2026-09-30
SELECT
    T2.point_name AS collection_point,
    T1.delivery_id AS delivery,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
RIGHT JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
   AND T1.delivery_id LIKE 'DLV-20260930-%'
WHERE T1.delivery_id IS NULL
ORDER BY T2.point_name ASC;
/*
           collection_point           | delivery | gross_weight_kg 
--------------------------------------+----------+-----------------
 Punto de Compra Aipe 1               |          |                
 Punto de Compra Aipe 2               |          |                
 Punto de Compra Andalucía 1          |          |                
 Punto de Compra Apía 1               |          |                
 Punto de Compra Armero Guayabal 1    |          |                
 Punto de Compra Belmira 1            |          |                
 Punto de Compra Caldono 1            |          |                
 Punto de Compra Caloto 1             |          |                
 Punto de Compra Carmen De Apicalá 2  |          |                
 Punto de Compra Chinácota 1          |          |                
...
(38 filas)
*/
