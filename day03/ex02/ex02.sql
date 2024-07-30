WITH list_of_id(id) AS (
			SELECT id FROM menu
			EXCEPT
			SELECT menu_id FROM person_order)

SELECT
	menu.pizza_name,
	menu.price,
	pizzeria.name
FROM menu
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE menu.id IN (SELECT id FROM list_of_id)

ORDER BY pizza_name, price