WITH
	where_Andrey_ordered_sth AS (
	    SELECT pizzeria.name AS pizzeria_name
	    FROM person
	    JOIN person_order ON person.id = person_order.person_id
	    JOIN menu ON person_order.menu_id = menu.id
	    JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
		WHERE person.name = 'Andrey'),
	where_Andrey_was AS (
		SELECT pizzeria.name AS pizzeria_name
	    FROM person
	    JOIN person_visits ON person.id = person_visits.person_id
	    JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
		WHERE person.name = 'Andrey')

SELECT pizzeria_name
FROM where_Andrey_was

EXCEPT

SELECT pizzeria_name
FROM where_Andrey_ordered_sth
	
ORDER BY 1