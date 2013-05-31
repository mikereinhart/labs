CREATE TABLE tasks(
	id SERIAL4 PRIMARY KEY,
	title VARCHAR(50),
	description TEXT,
	completed BOOLEAN,
	due_date DATE
);