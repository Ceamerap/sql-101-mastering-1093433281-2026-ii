-- Exercise 10 - c
-- Settlements: settlements of 2026-09-30 without deductions, with a check of the gross amount
-- Explanation:
-- Las columnas gross_cop y check_gross_cop muestran el mismo valor porque las dos salen de la misma operación: peso neto por precio por kilo aplicado.
-- gross_amount es una columna generada (GENERATED ALWAYS ... STORED) entonces Postgres la calcula sola con esa fórmula cada vez que se guarda una
-- liquidación y nadie puede escribirle un valor distinto. Mi columna check_gross_cop repite esa misma multiplicación dentro de la consulta,
-- con los mismos datos de la misma fila, así que el resultado tiene que ser igual solo cambiaria la cantidad de decimales que se ven,
-- porque gross_amount se guarda con 2 decimales y check_gross_cop muestra el producto completo.
SELECT
    T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.net_weight_kg AS net_weight_kg,
    T1.price_per_kg_applied AS price_per_kg,
    T1.deductions_amount AS deductions_cop,
    T1.gross_amount AS gross_cop,
    T1.net_weight_kg * T1.price_per_kg_applied AS check_gross_cop
FROM pay.settlements AS T1
WHERE T1.settled_at >= '2026-09-30'
  AND T1.settled_at < '2026-10-01'
  AND T1.deductions_amount = 0;

/*
     settlement      |      delivery       | net_weight_kg | price_per_kg | deductions_cop | gross_cop  | check_gross_cop 
---------------------+---------------------+---------------+--------------+----------------+------------+-----------------
 STL-20260930-000005 | DLV-20260927-000198 |        158.94 |     21608.00 |           0.00 | 3434375.52 |    3434375.5200
 STL-20260930-000042 | DLV-20260928-000048 |        300.18 |     23455.00 |           0.00 | 7040721.90 |    7040721.9000
 STL-20260930-000006 | DLV-20260928-000058 |        145.01 |     22847.00 |           0.00 | 3313043.47 |    3313043.4700
 STL-20260930-000019 | DLV-20260928-000075 |        134.15 |     22808.00 |           0.00 | 3059693.20 |    3059693.2000
 STL-20260930-000008 | DLV-20260928-000093 |        152.95 |     22477.00 |           0.00 | 3437857.15 |    3437857.1500
 STL-20260930-000021 | DLV-20260928-000105 |        219.83 |     22347.00 |           0.00 | 4912541.01 |    4912541.0100
 STL-20260930-000056 | DLV-20260928-000112 |        169.43 |     21050.00 |           0.00 | 3566501.50 |    3566501.5000
 STL-20260930-000049 | DLV-20260928-000122 |        129.47 |     22074.00 |           0.00 | 2857920.78 |    2857920.7800
 STL-20260930-000065 | DLV-20260928-000176 |        118.14 |     22623.00 |           0.00 | 2672681.22 |    2672681.2200
 STL-20260930-000016 | DLV-20260928-000207 |        180.13 |     21779.00 |           0.00 | 3923051.27 |    3923051.2700
...
(37 filas)
*/
