SELECT pizzeria.name AS pizzeria_name
FROM person_visits AS pv
JOIN pizzeria ON pv.pizzeria_id = pizzeria.id
JOIN person ON pv.person_id = person.id
JOIN menu ON pizzeria.id = menu.pizzeria_id
WHERE
	person.name = 'Dmitriy'
    AND visit_date = '2022-01-08'
    AND price < 800