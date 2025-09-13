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
('luca', 'rossi', 15, '1840/09/02', '1922/01/27'),
('Dante', 'Alighieri', 89, '1840/09/02', '1922/01/27');

SELECT * FROM autori;
