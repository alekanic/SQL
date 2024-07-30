SELECT name
FROM pizzeria
WHERE name NOT IN (
	SELECT DISTINCT name
    FROM pizzeria
    NATURAL JOIN person_visits);

SELECT name
FROM pizzeria
WHERE NOT EXISTS(
	SELECT 1
    FROM person_visits
    WHERE pizzeria.id = person_visits.pizzeria_id);