SELECT menu.pizza_name,
	   pizzeria.name AS pizzeria_name
FROM menu
JOIN person_order AS po ON menu.id = po.menu_id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
JOIN person ON po.person_id = person.id
WHERE person.name IN ('Denis', 'Anna')
ORDER BY pizza_name, pizzeria_name