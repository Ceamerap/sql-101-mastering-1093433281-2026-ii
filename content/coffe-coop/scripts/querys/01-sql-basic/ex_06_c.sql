-- Exercise 06 - c
-- Farmers from Pamplona (54518) with an inactive membership ordered by membership date
SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.membership_date AS membership_date,
    T1.is_active AS is_active
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.is_active = FALSE
ORDER BY T1.membership_date ASC;
/*
  document  |    first_name    |     last_name      | membership_date | is_active 
------------+------------------+--------------------+-----------------+-----------
 230971064  | Manuel           | Agudelo Jiménez    | 1997-03-29      | f
 534023693  | Myriam           | Valencia Moreno    | 1998-11-03      | f
 33787285   | Rubén            | Ramos Chamorro     | 1999-03-02      | f
 1135293825 | Abelardo         | Pérez Castro       | 2003-06-19      | f
 478755763  | Nicolás          | Rivera Duque       | 2003-08-11      | f
 160538872  | Liliana          | Mosquera Uribe     | 2007-09-27      | f
 223974138  | Rodrigo Nelson   | Cabrera Villamizar | 2009-05-02      | f
 10424994   | Cristian         | Herrera Zuluaga    | 2010-04-28      | f
 1015411133 | Santiago         | Bermúdez Ruiz      | 2010-11-30      | f
 1090968710 | Ruth             | Rodríguez Pérez    | 2010-12-11      | f
...
(21 filas)
*/
