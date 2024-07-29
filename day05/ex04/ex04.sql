/* Создание индекса */

CREATE INDEX idx_menu_unique
ON menu USING BTREE (pizzeria_id, pizza_name);

/* Проверка */

SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYSE
SELECT pizzeria_id, pizza_name
FROM menu;