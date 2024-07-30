WITH 
	tables AS (SELECT pizzeria.name AS pizzeria,
	                  person.gender
	           FROM person_visits AS pv
	           JOIN pizzeria ON pv.pizzeria_id = pizzeria.id
	           JOIN person ON pv.person_id = person.id),
	men AS (SELECT pizzeria FROM tables WHERE gender = 'male'),
    women AS (SELECT pizzeria FROM tables WHERE gender = 'female'),
	women_more AS (SELECT pizzeria FROM women EXCEPT ALL SELECT pizzeria FROM men),
	men_more AS (SELECT pizzeria FROM men EXCEPT ALL SELECT pizzeria FROM women)

SELECT pizzeria FROM women_more
UNION ALL
SELECT pizzeria FROM men_more

ORDER BY 1