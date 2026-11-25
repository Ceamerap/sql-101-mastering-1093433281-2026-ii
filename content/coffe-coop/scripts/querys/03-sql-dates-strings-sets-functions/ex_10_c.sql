-- Exercise 10 - c
-- Pending balance by collection point for deliveries of 2026-09-30, not cancelled settlements

SELECT
    T3.point_name                                       AS collection_point,
    COUNT(*)                                            AS settlements_count,
    SUM(pay.fn_settlement_balance(T1.settlement_id))    AS total_balance_cop
FROM pay.settlements AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.delivery_id = T2.delivery_id
INNER JOIN buy.collection_points AS T3
    ON T2.collection_point_id = T3.collection_point_id
WHERE T2.delivered_at::DATE = DATE '2026-09-30'
  AND T1.status <> 'cancelled'
GROUP BY T3.point_name
HAVING SUM(pay.fn_settlement_balance(T1.settlement_id)) > 0
ORDER BY total_balance_cop DESC, collection_point ASC;

/*
            collection_point            | settlements_count | total_balance_cop 
----------------------------------------+-------------------+-------------------
 Punto de Compra San Francisco 1        |                 2 |        8483555.66
 Punto de Compra El Banco 1             |                 3 |        7874484.05
 Punto de Compra San Andrés De Tumaco 1 |                 2 |        7376967.21
 Punto de Compra Cajibío 3              |                 3 |        6400728.72
 Punto de Compra Manzanares 1           |                 2 |        6094824.45
 Punto de Compra Puerto Tejada 1        |                 2 |        6051013.94
 Punto de Compra El Bagre 1             |                 3 |        5013706.66
 Punto de Compra Sáchica 1              |                 1 |        4965142.70
 Punto de Compra Algeciras 1            |                 2 |        4135855.75
 Punto de Compra Turbo 1                |                 1 |        4023811.68
...
(29 filas)
*/
