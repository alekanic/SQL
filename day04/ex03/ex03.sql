SELECT list_of_dates AS missing_date FROM v_generated_dates
EXCEPT 
SELECT visit_date FROM person_visits
ORDER BY missing_date