-- Exercise 10 - a
-- Settlements count and total net amount per farmer, deliveries of September 2026
SELECT
    T4.document_number AS document,
    T4.first_name AS first_name,
    T4.last_name AS last_name,
    COUNT(T1.settlement_id) AS settlements_count,
    SUM(T1.net_amount) AS total_net_cop
FROM pay.settlements AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.delivery_id = T2.delivery_id
INNER JOIN farm.farms AS T3
    ON T2.farm_id = T3.farm_id
INNER JOIN farm.farmers AS T4
    ON T3.farmer_id = T4.farmer_id
WHERE T2.delivery_id LIKE 'DLV-202609%'
GROUP BY T4.farmer_id, T4.document_number, T4.first_name, T4.last_name
ORDER BY total_net_cop DESC;
/*
  document  |     first_name      |       last_name       | settlements_count | total_net_cop 
------------+---------------------+-----------------------+-------------------+---------------
 30933664   | Cristian            | García Contreras      |                 3 |   15493357.77
 1071161211 | Alba                | Muñoz Ramírez         |                 2 |   14576631.94
 526195285  | Jairo               | Valencia Zapata       |                 2 |   14528146.87
 337551898  | Alejandro Mateo     | Flórez Uribe          |                 2 |   14460246.30
 854161034  | Luisa Martha        | Caicedo Romero        |                 1 |   13335230.83
 782091682  | Luisa               | Duque Torres          |                 2 |   12843595.73
 549378351  | Dora                | Galvis Ospina         |                 3 |   12821153.68
 182907696  | Jorge               | Duarte Zapata         |                 2 |   12777306.01
 446732017  | Reinaldo            | Ruiz Cuéllar          |                 2 |   12310076.05
 628772920  | Aura                | Osorio Medina         |                 2 |   12133626.08
...
(6149 filas)
*/
