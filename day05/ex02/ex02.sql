CREATE INDEX idx_person_name
ON person USING BTREE (UPPER(name));