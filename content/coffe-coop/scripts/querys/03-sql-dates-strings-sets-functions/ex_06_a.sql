-- Exercise 06 - a
-- Female farmers of Pamplona (54518): short name and phone, by last name and first name

SELECT
    CONCAT(SUBSTRING(T1.first_name FROM 1 FOR 1), '. ', T1.last_name)   AS short_name,
    T1.phone_number                                                     AS phone
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.gender = 'F'
ORDER BY T1.last_name ASC, T1.first_name ASC;

/*
      short_name      |   phone    
----------------------+------------
 M. Agudelo Sandoval  | 3242280898
 E. Álvarez Bonilla   | 3236902029
 R. Álvarez Cárdenas  | 3047898372
 M. Álvarez Carrillo  | 3059237130
 M. Álvarez Correa    | 3232410671
 M. Arango Narváez    | 3178267449
 E. Arias Álvarez     | 3213658326
 V. Arias Ramírez     | 3204850778
 I. Barrera Cabrera   | 3041744702
 M. Barrera Correa    | 3126485460
...
(111 filas)
*/
