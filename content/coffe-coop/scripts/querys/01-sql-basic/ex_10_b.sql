-- Exercise 10 - b
-- Settlements: pending settlements of 2026-09-30 ordered by net amount descending
SELECT
    T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.net_weight_kg AS net_weight_kg,
    T1.price_per_kg_applied AS price_per_kg,
    T1.gross_amount AS gross_cop,
    T1.deductions_amount AS deductions_cop,
    T1.net_amount AS net_cop
FROM pay.settlements AS T1
WHERE T1.settled_at >= '2026-09-30'
  AND T1.settled_at < '2026-10-01'
  AND T1.status = 'pending'
ORDER BY T1.net_amount DESC;
/*
     settlement      |      delivery       | net_weight_kg | price_per_kg | gross_cop  | deductions_cop |  net_cop   
---------------------+---------------------+---------------+--------------+------------+----------------+------------
 STL-20260930-000062 | DLV-20260929-000235 |        283.06 |     21803.00 | 6171557.18 |           0.00 | 6171557.18
 STL-20260930-000013 | DLV-20260928-000004 |        236.95 |     22339.00 | 5293226.05 |      205370.50 | 5087855.55
 STL-20260930-000069 | DLV-20260930-000204 |        231.21 |     22692.00 | 5246617.32 |      232910.66 | 5013706.66
 STL-20260930-000021 | DLV-20260928-000105 |        219.83 |     22347.00 | 4912541.01 |           0.00 | 4912541.01
 STL-20260930-000011 | DLV-20260927-000088 |        211.64 |     22841.00 | 4834069.24 |           0.00 | 4834069.24
 STL-20260930-000018 | DLV-20260927-000097 |        216.32 |     21645.00 | 4682246.40 |           0.00 | 4682246.40
 STL-20260930-000007 | DLV-20260927-000177 |        226.45 |     20916.00 | 4736428.20 |      167394.38 | 4569033.82
 STL-20260930-000068 | DLV-20260928-000311 |        192.15 |     22592.00 | 4341052.80 |           0.00 | 4341052.80
 STL-20260930-000033 | DLV-20260929-000007 |        183.79 |     22164.00 | 4073521.56 |           0.00 | 4073521.56
 STL-20260930-000016 | DLV-20260928-000207 |        180.13 |     21779.00 | 3923051.27 |           0.00 | 3923051.27
...
(28 filas)
*/
