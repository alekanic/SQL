CREATE VIEW v_generated_dates
AS SELECT list_of_dates::date
FROM generate_series('2022-01-01', '2022-01-31', interval '1 day') AS list_of_dates
ORDER BY 1