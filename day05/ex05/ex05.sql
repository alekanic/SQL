/* Создание индекса */

CREATE INDEX idx_person_order_order_date
ON person_order USING BTREE (order_date)
WHERE order_date = '2022-01-01';

/* Проверка */

SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYSE
SELECT order_date
FROM person_order
WHERE order_date = '2022-01-01';