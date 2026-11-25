-- Exercise 05 - c
-- Department Norte de Santander: exact comparison and comparison with UPPER

SELECT
    T1.department_code  AS code,
    T1.department_name  AS department
FROM geo.departments AS T1
WHERE T1.department_name = 'Norte de Santander';

/*
 code | department 
------+------------
(0 filas)
*/

SELECT
    T1.department_code  AS code,
    T1.department_name  AS department
FROM geo.departments AS T1
WHERE UPPER(T1.department_name) = UPPER('Norte de Santander');

/*
 code |     department     
------+--------------------
 54   | Norte De Santander
(1 fila)
*/
