-- Exercise 05 - b
-- Municipality of Norte de Santander (54) with the longest name, first alphabetically on a tie

SELECT
    T1.municipality_name            AS municipality,
    LENGTH(T1.municipality_name)    AS name_length
FROM geo.municipalities AS T1
WHERE T1.department_code = '54'
ORDER BY name_length DESC, municipality ASC
LIMIT 1;

/*
   municipality    | name_length 
-------------------+-------------
 Villa Del Rosario |          17
(1 fila)
*/
