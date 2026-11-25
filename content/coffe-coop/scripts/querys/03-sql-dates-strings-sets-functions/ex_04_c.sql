-- Exercise 04 - c
-- Deliveries of 2026 from week 36 to 40: count, first and last day of year with data

SELECT
    EXTRACT(week FROM T1.delivered_at)      AS week_number,
    COUNT(*)                                AS deliveries_count,
    MIN(EXTRACT(doy FROM T1.delivered_at))  AS first_day_of_year,
    MAX(EXTRACT(doy FROM T1.delivered_at))  AS last_day_of_year
FROM buy.deliveries AS T1
WHERE EXTRACT(year FROM T1.delivered_at) = 2026
  AND EXTRACT(week FROM T1.delivered_at) BETWEEN 36 AND 40
GROUP BY EXTRACT(week FROM T1.delivered_at)
ORDER BY week_number ASC;

/*
 week_number | deliveries_count | first_day_of_year | last_day_of_year 
-------------+------------------+-------------------+------------------
          36 |             2146 |               243 |              249
          37 |             2151 |               250 |              256
          38 |             2099 |               257 |              263
          39 |             2104 |               264 |              270
          40 |              928 |               271 |              273
(5 filas)
*/
