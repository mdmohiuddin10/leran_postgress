-- Active: 1731585360528@@127.0.0.1@5432@ph
SELECT * from person2

ALTER TABLE person2
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

SELECT * from person2

INSERT into person2 values (4,'test', 'last', 45, true, '10.02.2022', 'karim@gmail.com')