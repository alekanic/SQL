SELECT person.id AS person_id,
	   person.name AS person_name,
	   person.age,
	   gender,
	   address,
	   pizzeria.id AS pizzeria_id,
	   pizzeria.name AS pizzeria_name,
	   rating
FROM person
CROSS JOIN pizzeria
ORDER BY person.id, pizzeria.id;