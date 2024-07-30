WITH 
	tables AS (SELECT pizzeria.name AS pizzeria,
	                  person.gender
	           FROM person_order AS po
	           JOIN person ON po.person_id = person.id
	           JOIN menu ON po.menu_id = menu.id
	           JOIN pizzeria ON menu.pizzeria_id = pizzeria.id),
	men AS (SELECT pizzeria FROM tables WHERE gender = 'male'),
    women AS (SELECT pizzeria FROM tables WHERE gender = 'female'),
	women_more AS (SELECT pizzeria FROM women EXCEPT SELECT pizzeria FROM men),
	men_more AS (SELECT pizzeria FROM men EXCEPT SELECT pizzeria FROM women)

SELECT pizzeria FROM women_more
UNION ALL
SELECT pizzeria FROM men_more

ORDER BY 1