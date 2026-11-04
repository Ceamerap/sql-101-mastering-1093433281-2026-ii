-- Exercise 06 - b
-- Pairs of farmers of Pamplona (54518) with the same last name
SELECT
    T1.last_name AS last_name,
    T1.first_name || ' ' || T1.last_name AS farmer_a,
    T2.first_name || ' ' || T2.last_name AS farmer_b
FROM farm.farmers AS T1
INNER JOIN farm.farmers AS T2
    ON T1.last_name = T2.last_name
   AND T1.municipality_code = T2.municipality_code
   AND T1.farmer_id < T2.farmer_id
WHERE T1.municipality_code = '54518'
ORDER BY T1.last_name ASC, T1.farmer_id ASC, T2.farmer_id ASC;
/*
     last_name      |            farmer_a            |          farmer_b          
--------------------+--------------------------------+----------------------------
 Bastidas Rodríguez | Alberto Bastidas Rodríguez     | Antonio Bastidas Rodríguez
 Díaz Cuéllar       | Inés Lucía Díaz Cuéllar        | Fabio Díaz Cuéllar
 Flórez González    | Mónica Claudia Flórez González | Myriam Flórez González
 Mejía Vera         | Nelson Samuel Mejía Vera       | Elsa Mejía Vera
 Valencia Moreno    | Teresa Adriana Valencia Moreno | Myriam Valencia Moreno
(5 filas)
*/
