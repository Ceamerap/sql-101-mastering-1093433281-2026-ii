-- Exercise 06 - b
-- Farmers from Pamplona (54518) without a registered email
SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.gender AS gender,
    T1.phone_number AS phone,
    T1.email AS email
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.email IS NULL
ORDER BY T1.last_name ASC, T1.first_name ASC;
/*
  document  |    first_name    |     last_name      | gender |   phone    | email 
------------+------------------+--------------------+--------+------------+-------
 768461420  | Marleny          | Agudelo Sandoval   | F      | 3242280898 | 
 939635303  | Marleny          | Álvarez Correa     | F      | 3232410671 | 
 302223305  | Camilo           | Arias Mora         | M      | 3045535545 | 
 550696749  | Viviana          | Arias Ramírez      | F      | 3204850778 | 
 797017145  | Isabella         | Barrera Cabrera    | F      | 3041744702 | 
 483692716  | Ramiro           | Barrera Villamizar | M      | 3056539829 | 
 718906996  | Nelson           | Bedoya Vélez       | M      | 3194564518 | 
 21358854   | Manuela Yolanda  | Benavides Delgado  | F      | 3229418470 | 
 737383707  | Yesenia          | Bermúdez Henao     | F      | 3141005257 | 
 1015411133 | Santiago         | Bermúdez Ruiz      | M      | 3003993000 | 
...
(65 filas)
*/
