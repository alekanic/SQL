SELECT name
FROM person
JOIN person_order AS po ON person.id = po.person_id
JOIN menu ON po.menu_id = menu.id
WHERE
    address IN ('Moscow', 'Samara')
	AND gender = 'male'
	AND pizza_name IN ('pepperoni pizza', 'mushroom pizza')
ORDER BY 1 DESC