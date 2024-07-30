SELECT person.name AS person_name, pizzeria.name AS pizzeria_name
FROM person_visits
INNER JOIN person
	ON person_visits.person_id = person.id
INNER JOIN pizzeria
	ON person_visits.pizzeria_id = pizzeria.id
WHERE visit_date IN('2022-01-07', '2022-01-08', '2022-01-09')
ORDER BY person_name, pizzeria_name DESC

-- SELECT (SELECT person.name
--         FROM person
--         WHERE id = person_id) AS person_name,
--        (SELECT pizzeria.name
--         FROM pizzeria
--         WHERE id = pizzeria_id) AS pizzeria_name
-- FROM (SELECT *
--       FROM person_visits
--       WHERE visit_date IN('2022-01-07', '2022-01-08', '2022-01-09'))
-- ORDER BY person_name, pizzeria_name DESC