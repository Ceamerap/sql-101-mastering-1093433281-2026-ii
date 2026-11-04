-- Exercise 04 - b
-- Same query with INNER JOIN ... ON and an explicit join column
-- Literal c) explanation (compare the number of rows of a) and b)):
-- EXPLICACION: (escribe aqui con tus palabras)
SELECT
    T1.municipality_name AS municipality,
    T2.department_name AS department
FROM geo.municipalities AS T1
INNER JOIN geo.departments AS T2
    ON T1.department_code = T2.department_code
ORDER BY T2.department_name ASC, T1.municipality_name ASC;
/*
        municipality         |                        department                        
-----------------------------+----------------------------------------------------------
 Leticia                     | Amazonas
 Puerto Nariño               | Amazonas
 Abejorral                   | Antioquia
 Abriaquí                    | Antioquia
 Alejandría                  | Antioquia
 Amagá                       | Antioquia
 Amalfi                      | Antioquia
 Andes                       | Antioquia
 Angelópolis                 | Antioquia
 Angostura                   | Antioquia
...
(1102 filas)
*/
