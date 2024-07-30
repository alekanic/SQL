SELECT
	(CASE WHEN person.name is NULL THEN '-' ELSE person.name END) AS person_name,
	 visit_date,
	(CASE WHEN pizzeria.name is NULL THEN '-' ELSE pizzeria.name END) AS pizzeria_name
FROM person
	
FULL JOIN (
	SELECT person_id, pizzeria_id, visit_date
	FROM person_visits
	WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS visit_date
ON person.id = visit_date.person_id

FULL JOIN pizzeria ON pizzeria_id = pizzeria.id

ORDER BY 1, 2, 3