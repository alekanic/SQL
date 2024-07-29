/* Создание индекса */

CREATE INDEX idx_person_discounts_unique
ON person_discounts USING BTREE (person_id, pizzeria_id);

/* Проверка */

SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYZE
SELECT * FROM person_discounts
WHERE pizzeria_id = 1;