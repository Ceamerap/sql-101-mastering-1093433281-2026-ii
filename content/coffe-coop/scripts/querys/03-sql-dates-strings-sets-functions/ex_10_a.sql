-- Exercise 10 - a
-- Function pay.fn_settlement_balance: net amount of a settlement minus its payments

CREATE OR REPLACE FUNCTION pay.fn_settlement_balance(p_settlement_id VARCHAR)
RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
DECLARE
    v_net   NUMERIC;
    v_paid  NUMERIC;
BEGIN
    SELECT T1.net_amount
    INTO v_net
    FROM pay.settlements AS T1
    WHERE T1.settlement_id = p_settlement_id;

    SELECT SUM(T2.amount)
    INTO v_paid
    FROM pay.payments AS T2
    WHERE T2.settlement_id = p_settlement_id;

    RETURN v_net - COALESCE(v_paid, 0);
END;
$$;

SELECT
    pay.fn_settlement_balance('STL-20261001-000040') AS balance_cop;

/*
 balance_cop 
-------------
  6094824.45
(1 fila)
*/
