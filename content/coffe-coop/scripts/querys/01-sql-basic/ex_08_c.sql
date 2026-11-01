-- Exercise 08 - c
-- Deliveries: wet_parchment or cherry deliveries of 2026-09-30 ordered by gross weight descending
SELECT
    T1.delivery_id AS delivery,
    T1.farm_id AS farm_id,
    T1.collection_point_id AS collection_point_id,
    T1.delivered_at AS received_at,
    T1.coffee_type AS coffee_type,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
  AND T1.coffee_type IN ('wet_parchment', 'cherry')
ORDER BY T1.gross_weight_kg DESC;
/*
      delivery       | farm_id | collection_point_id |     received_at     |  coffee_type  | gross_weight_kg 
---------------------+---------+---------------------+---------------------+---------------+-----------------
 DLV-20260930-000081 |   19338 |                 117 | 2026-09-30 09:17:37 | cherry        |          475.13
 DLV-20260930-000187 |  231839 |                 159 | 2026-09-30 12:47:52 | cherry        |          339.30
 DLV-20260930-000105 |   13478 |                  37 | 2026-09-30 09:57:09 | wet_parchment |          277.63
 DLV-20260930-000028 |  182397 |                 133 | 2026-09-30 07:13:46 | wet_parchment |          258.00
 DLV-20260930-000133 |   44726 |                  59 | 2026-09-30 10:51:03 | cherry        |          254.83
 DLV-20260930-000094 |   99627 |                 133 | 2026-09-30 09:31:20 | cherry        |          246.96
 DLV-20260930-000129 |   89312 |                  76 | 2026-09-30 10:44:39 | wet_parchment |          206.71
 DLV-20260930-000161 |  101318 |                  24 | 2026-09-30 12:06:51 | wet_parchment |          197.04
 DLV-20260930-000046 |   85553 |                 140 | 2026-09-30 07:30:47 | wet_parchment |          186.73
 DLV-20260930-000248 |  215660 |                 166 | 2026-09-30 14:59:13 | cherry        |          159.89
...
(22 filas)
*/
