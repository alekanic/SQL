SELECT
	person.name,
	menu.pizza_name,
	menu.price, 
	CAST((price - (price * discount / 100)) AS INT) AS discount_price, 
	pizzeria.name AS pizzeria_name
FROM person_discounts pd
JOIN person ON pd.person_id = person.id
JOIN pizzeria ON pizzeria.id = pd.pizzeria_id
JOIN menu ON menu.pizzeria_id = pd.pizzeria_id
ORDER BY name, pizza_name;