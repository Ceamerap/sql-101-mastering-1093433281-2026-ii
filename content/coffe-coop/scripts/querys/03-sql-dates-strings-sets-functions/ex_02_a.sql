-- Exercise 02 - a
-- Top 10 oldest farmers of Pamplona (54518): age in years at 2026-09-30

SELECT
    T1.first_name                                               AS first_name,
    T1.last_name                                                AS last_name,
    T1.birth_date                                               AS birth_date,
    DATE_PART('year', AGE(DATE '2026-09-30', T1.birth_date))    AS age_years
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
ORDER BY T1.birth_date ASC
LIMIT 10;

/*
   first_name   |     last_name      | birth_date | age_years 
----------------+--------------------+------------+-----------
 Elsa           | Ramos Cárdenas     | 1950-01-11 |        76
 Felipe Camilo  | Ríos Ospina        | 1950-03-09 |        76
 Adriana        | Mosquera Ospina    | 1950-08-13 |        76
 Arturo         | Contreras Peña     | 1950-08-18 |        76
 Antonio        | Bastidas Rodríguez | 1950-10-02 |        75
 Édgar          | Burbano Arango     | 1951-05-23 |        75
 Gustavo        | Mosquera López     | 1951-06-05 |        75
 Diana          | Díaz Medina        | 1951-07-19 |        75
 Rosa           | Ríos Cárdenas      | 1951-08-26 |        75
 Mónica Claudia | Flórez González    | 1952-02-08 |        74
(10 filas)
*/
