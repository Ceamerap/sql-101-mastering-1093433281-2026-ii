-- Exercise 08 - a
-- Number of municipalities per department
SELECT
    T1.department_name AS department,
    COUNT(T2.municipality_code) AS municipalities_count
FROM geo.departments AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.department_code = T2.department_code
GROUP BY T1.department_code, T1.department_name
ORDER BY municipalities_count DESC, T1.department_name ASC;
/*
                        department                        | municipalities_count 
----------------------------------------------------------+----------------------
 Antioquia                                                |                  125
 Boyacá                                                   |                  123
 Cundinamarca                                             |                  116
 Santander                                                |                   87
 Nariño                                                   |                   64
 Tolima                                                   |                   47
 Bolívar                                                  |                   46
 Cauca                                                    |                   42
 Valle Del Cauca                                          |                   42
 Norte De Santander                                       |                   40
...
(33 filas)
*/
