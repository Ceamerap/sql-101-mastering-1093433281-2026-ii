-- Exercise 01 - a
-- Farmers of Pamplona (54518): seniority in days up to today, oldest first

SELECT
    T1.document_number                  AS document,
    T1.first_name                       AS first_name,
    T1.last_name                        AS last_name,
    T1.membership_date                  AS membership_date,
    CURRENT_DATE - T1.membership_date   AS membership_days
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
ORDER BY T1.membership_date ASC;

/*
  document  |    first_name     |     last_name      | membership_date | membership_days 
------------+-------------------+--------------------+-----------------+-----------------
 402745033  | Julián Guillermo  | Valencia Narváez   | 1995-01-27      |           11606
 361839624  | Rocío Alba        | Ortega Serrano     | 1995-07-10      |           11442
 546579335  | Wilson            | Parra Prada        | 1995-07-28      |           11424
 939635303  | Marleny           | Álvarez Correa     | 1996-03-20      |           11188
 748380481  | Teresa Adriana    | Valencia Moreno    | 1996-07-23      |           11063
 1012324420 | Martha Carolina   | Pérez Jaimes       | 1996-11-22      |           10941
 230971064  | Manuel            | Agudelo Jiménez    | 1997-03-29      |           10814
 483692716  | Ramiro            | Barrera Villamizar | 1997-04-08      |           10804
 677772599  | Guillermo         | Pérez Pérez        | 1997-05-17      |           10765
 59388780   | Juan              | Ortega Zapata      | 1997-07-13      |           10708
...
(230 filas)
*/
