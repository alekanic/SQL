SELECT person.name
FROM person_order AS po
JOIN menu ON po.menu_id = menu.id
JOIN person ON po.person_id = person.id
WHERE gender = 'female'
      AND pizza_name = 'cheese pizza'

INTERSECT

SELECT person.name
FROM person_order AS po
JOIN menu ON po.menu_id = menu.id
JOIN person ON po.person_id = person.id
WHERE gender = 'female'
      AND pizza_name = 'pepperoni pizza'
ORDER BY 1