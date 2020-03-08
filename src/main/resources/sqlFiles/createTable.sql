CREATE TABLE users (
   id SERIAL PRIMARY KEY,
   name VARCHAR (50) NOT NULL,
   password VARCHAR (50) NOT NULL,
   email VARCHAR (100),
   sex VARCHAR (50),
   country VARCHAR (100)
);