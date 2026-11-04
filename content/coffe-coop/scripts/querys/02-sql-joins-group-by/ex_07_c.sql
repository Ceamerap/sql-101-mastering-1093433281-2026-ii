-- Exercise 07 - c
-- Farmers of Pamplona (54518): total and farmers with a registered email
-- Explanation (why the two counts are different):
-- EXPLICACION: (escribe aqui con tus palabras)
SELECT
    COUNT(*) AS total_farmers,
    COUNT(T1.email) AS farmers_with_email
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518';
/*
 total_farmers | farmers_with_email 
---------------+--------------------
           230 |                165
(1 fila)
*/
