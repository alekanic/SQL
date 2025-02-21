SELECT order_date AS order_date,
       CONCAT(name, ' (age:', age, ')') AS person_information
FROM (person_order AS person_order(primary_id, id, menu_id, order_date)
    NATURAL JOIN person)
ORDER BY order_date, person_information