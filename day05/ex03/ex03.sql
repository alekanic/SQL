/* Cоздание индекса */

CREATE INDEX idx_person_order_multi
ON person_order USING BTREE (person_id, menu_id, order_date)
WHERE person_id = 8 AND menu_id = 19;

/* Проверка */

SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYSE
SELECT person_id, menu_id, order_date
FROM person_order
WHERE person_id = 8 AND menu_id = 19;