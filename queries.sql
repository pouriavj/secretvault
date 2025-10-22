CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	email VARCHAR(100) UNIQUE NOT NULL CHECK (length(btrim(email)) > 0),
	password VARCHAR(100) NOT NULL CHECK (length(btrim(password)) > 0),
    secret TEXT
);