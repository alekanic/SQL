CREATE VIEW v_symmetric_union
AS (
	WITH
		january_02 AS (
		SELECT * FROM person_visits
	    WHERE visit_date = '2022-01-02'),
		january_06 AS (
		SELECT * FROM person_visits
	 	WHERE visit_date = '2022-01-06'
		)
	
	(SELECT person_id FROM january_02 AS R
	EXCEPT
	SELECT person_id FROM january_06 AS S)
		
	UNION
	
	(SELECT person_id FROM january_06 AS S
	EXCEPT
	SELECT person_id FROM january_02 AS R)
	
	ORDER BY 1
)