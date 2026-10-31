-- Exercise 02 - b
-- Coffee varieties: non rust-resistant arabica varieties ordered by name descending
SELECT
    T1.variety_name AS variety,
    T1.species AS species,
    T1.is_rust_resistant AS is_rust_resistant
FROM farm.coffee_varieties AS T1
WHERE T1.is_rust_resistant = FALSE
  AND T1.species = 'arabica'
ORDER BY T1.variety_name DESC;
/*
    variety    | species | is_rust_resistant 
---------------+---------+-------------------
 Típica        | arabica | f
 Pacamara      | arabica | f
 Maragogipe    | arabica | f
 Geisha        | arabica | f
 Caturra       | arabica | f
 Borbón Rosado | arabica | f
 Borbón        | arabica | f
(7 filas)
*/
