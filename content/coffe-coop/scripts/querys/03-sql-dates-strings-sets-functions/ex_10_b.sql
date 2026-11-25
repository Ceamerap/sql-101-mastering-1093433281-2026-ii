-- Exercise 10 - b
-- Not cancelled settlements of deliveries of 2026-09-30 with a pending balance

SELECT
    T1.settlement_id                                AS settlement,
    T1.delivery_id                                  AS delivery,
    T1.status                                       AS settlement_status,
    T1.net_amount                                   AS net_cop,
    pay.fn_settlement_balance(T1.settlement_id)     AS balance_cop
FROM pay.settlements AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.delivery_id = T2.delivery_id
WHERE T2.delivered_at::DATE = DATE '2026-09-30'
  AND T1.status <> 'cancelled'
  AND pay.fn_settlement_balance(T1.settlement_id) > 0
ORDER BY balance_cop DESC, T1.settlement_id ASC;

/*
     settlement      |      delivery       | settlement_status |  net_cop   | balance_cop 
---------------------+---------------------+-------------------+------------+-------------
 STL-20261001-000040 | DLV-20260930-000256 | pending           | 6094824.45 |  6094824.45
 STL-20261001-000057 | DLV-20260930-000105 | pending           | 6051013.94 |  6051013.94
 STL-20261003-000007 | DLV-20260930-000116 | pending           | 5349871.04 |  5349871.04
 STL-20261002-000004 | DLV-20260930-000010 | pending           | 5347247.03 |  5347247.03
 STL-20260930-000069 | DLV-20260930-000204 | pending           | 5013706.66 |  5013706.66
 STL-20261003-000001 | DLV-20260930-000023 | pending           | 4965142.70 |  4965142.70
 STL-20261002-000042 | DLV-20260930-000152 | pending           | 4693178.85 |  4693178.85
 STL-20261003-000012 | DLV-20260930-000286 | pending           | 4135855.75 |  4135855.75
 STL-20261002-000033 | DLV-20260930-000189 | pending           | 4023811.68 |  4023811.68
 STL-20261001-000033 | DLV-20260930-000179 | pending           | 3978665.28 |  3978665.28
...
(34 filas)
*/
