CREATE TABLE IF NOT EXISTS users
(
    id       INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50)  NOT NULL,
    surname    VARCHAR(100) NOT NULL
);

INSERT INTO users (name, surname)
VALUES ('John', 'Brawn1'),
       ('Peter', 'Brawn2'),
       ('Yan', 'Brawn3');
