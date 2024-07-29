CREATE VIEW v_price_with_discount
AS (
	SELECT
		person.name AS person_name,
		menu.pizza_name,
		menu.price,
		CAST((price - price * 0.1) AS INT) AS discount_price
	FROM person_order AS po
	JOIN menu ON po.menu_id = menu.id
	JOIN person ON po.person_id = person.id
	ORDER BY person_name, pizza_name
)