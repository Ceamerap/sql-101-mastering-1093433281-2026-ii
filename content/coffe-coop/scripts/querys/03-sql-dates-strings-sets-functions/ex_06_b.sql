-- Exercise 06 - b
-- One sentence per collection point of Norte de Santander (54) with its municipality

SELECT
    CONCAT(T1.point_name, ' recibe café en ', T2.municipality_name) AS description
FROM buy.collection_points AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
WHERE T2.department_code = '54'
ORDER BY T1.point_name ASC;

/*
                      description                       
--------------------------------------------------------
 Punto de Compra Bochalema 1 recibe café en Bochalema
 Punto de Compra Chinácota 1 recibe café en Chinácota
 Punto de Compra Convención 1 recibe café en Convención
 Punto de Compra El Carmen 1 recibe café en El Carmen
 Punto de Compra El Carmen 2 recibe café en El Carmen
 Punto de Compra El Zulia 1 recibe café en El Zulia
 Punto de Compra Herrán 1 recibe café en Herrán
 Punto de Compra Herrán 2 recibe café en Herrán
 Punto de Compra Ocaña 1 recibe café en Ocaña
 Punto de Compra Sardinata 1 recibe café en Sardinata
(10 filas)
*/
