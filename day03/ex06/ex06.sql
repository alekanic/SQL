WITH src AS (
    SELECT *
    FROM menu
    JOIN pizzeria as p
    ON menu.pizzeria_id = p.id
)

SELECT
	dst.pizza_name AS pizza_name,
	dst.name AS pizzeria_name_1,
	src.name AS pizzeria_name_2,
	dst.price AS price
FROM src
JOIN src AS dst
	ON src.pizza_name = dst.pizza_name
    AND src.price = dst.price
    AND src.pizzeria_id < dst.pizzeria_id
	
ORDER BY 1