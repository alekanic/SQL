CREATE VIEW x_persons_female 
	AS SELECT id, name, age, gender, address
	FROM person WHERE gender = 'female';

CREATE VIEW x_persons_male
	AS SELECT id, name, age, gender, address
	FROM person WHERE gender = 'male';