-- Exercise 06 - c
-- Deliveries of 2026-09-30 at collection point 163: delivery code split into its parts

SELECT
    T1.delivery_id                              AS delivery,
    SUBSTRING(T1.delivery_id FROM 1 FOR 3)      AS prefix,
    SUBSTRING(T1.delivery_id FROM 5 FOR 8)      AS date_code,
    SUBSTRING(T1.delivery_id FROM 14 FOR 6)     AS sequence_code,
    T1.delivered_at                             AS delivered_at
FROM buy.deliveries AS T1
WHERE T1.collection_point_id = 163
  AND T1.delivered_at::DATE = DATE '2026-09-30'
ORDER BY T1.delivered_at ASC;

/*
      delivery       | prefix | date_code | sequence_code |    delivered_at     
---------------------+--------+-----------+---------------+---------------------
 DLV-20260930-000063 | DLV    | 20260930  | 000063        | 2026-09-30 08:04:43
 DLV-20260930-000077 | DLV    | 20260930  | 000077        | 2026-09-30 08:53:06
 DLV-20260930-000141 | DLV    | 20260930  | 000141        | 2026-09-30 11:11:53
 DLV-20260930-000233 | DLV    | 20260930  | 000233        | 2026-09-30 14:36:39
(4 filas)
*/
