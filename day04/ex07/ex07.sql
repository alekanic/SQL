/* Внесение новой записи */

WITH another_pizzeria AS (
	SELECT pizzeria_id
	FROM menu
	JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
	WHERE price < 800
	AND pizzeria.name  NOT IN (SELECT * FROM mv_dmitriy_visits_and_eats)
	LIMIT 1
)

INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date) VALUES (
	(SELECT MAX(id) + 1 FROM person_visits),
 	(SELECT id FROM person WHERE name = 'Dmitriy'),
 	(SELECT pizzeria_id FROM another_pizzeria),
	'2022-01-08'
 )

 /*Обновление представления из упражнения 06*/

 REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;