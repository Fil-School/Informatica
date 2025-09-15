CREATE TABLE autori (
id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(30) NOT NULL,
  cognome VARCHAR(30) NOT NULL,
  data_n DATE NOT NULL,
  data_m DATE
);

ALTER TABLE autori
ADD n_opere INT NOT NULL;

ALTER TABLE autori
MODIFY COLUMN n_opere INT AFTER cognome;

INSERT INTO autori(nome, cognome, n_opere, data_n, data_m) VALUES 
('Giacomo', 'Leopardi', 15, '1840/09/02', '1922/01/27'),
('Dante', 'Alighieri', 89, '1840/09/02', '1922/01/27');

ALTER TABLE autori
ADD valore_patrimoniale DECIMAL(12,2) NOT NULL;

ALTER TABLE autori
MODIFY COLUMN valore_patrimoniale DECIMAL(12,2) AFTER n_opere;

UPDATE autori
SET valore_patrimoniale = 1001
where id = 1;

UPDATE autori
SET valore_patrimoniale = 1001
where cognome = 'Alighieri';

INSERT INTO autori(nome,cognome,n_opere,valore_patrimoniale,data_n,data_m) VALUES
('Mariasofia', 'Baggio', 92, '100.89', '2025/09/02', '2025/09/02');
('Mariagrazia', 'Baggio', 92, '100.89', '2025/09/02', '2025/09/02');

/*
SELECT *
FROM autori
WHERE n_opere BETWEEN 1 AND 300;
WHERE n_opere>=1 AND n_opere<=300;
*/

/*
SELECT cognome,nome
FROM autori
WHERE data_n BETWEEN '1940/01/01' AND '2500/01/01';
*/

SELECT *
FROM autori
WHERE cognome IN ('Alighieri');

SELECT * 
FROM autori
WHERE nome


