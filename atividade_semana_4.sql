CREATE TABLE hardware(
	id_hardware SERIAL PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	preco FLOAT NOT NULL
);

CREATE TABLE periferico(
	id_periferico SERIAL PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	preco FLOAT NOT NULL
);

ALTER TABLE hardware ADD marca VARCHAR(40);
ALTER TABLE periferico ADD marca VARCHAR(40);

SELECT * FROM hardware;
SELECT * FROM periferico;

INSERT INTO hardware (nome,preco,marca) VALUES ('Placa Mãe',300.00,'AZUS');
INSERT INTO hardware (nome,preco,marca) VALUES ('Memoria DDR3',200.00,'FURY');
INSERT INTO hardware (nome,preco,marca) VALUES ('SSD 1T',300.00,'Solid');
INSERT INTO hardware (nome,preco,marca) VALUES ('Plocessador i7 10º G',1500.00,'AMD');

INSERT INTO periferico (nome,preco,marca) VALUES ('Teclado',300.00,'AZUS');
INSERT INTO periferico (nome,preco,marca) VALUES ('Mouse Macro',200.00,'FURY');
INSERT INTO periferico (nome,preco,marca) VALUES ('Readset',300.00,'Solid');
INSERT INTO periferico (nome,preco,marca) VALUES ('Alto Falante Bru',50.00,'AMD');

SELECT * FROM hardware;
SELECT * FROM periferico;

UPDATE hardware SET marca='INTEL' WHERE id_hardware=1;
UPDATE periferico SET marca='Booster' WHERE id_periferico=3;

SELECT * FROM hardware;
SELECT * FROM periferico;

DELETE FROM periferico WHERE id_periferico=4;
DELETE FROM hardware WHERE id_hardware=2;

SELECT a.nome as Hardwares, b.nome as Perifericos 
from hardware a
inner join periferico b on a.id_hardware = b.id_periferico;

SELECT a.* as Hardwares, b.* as Perifericos 
from hardware a
inner join periferico b on a.id_hardware = b.id_periferico;
