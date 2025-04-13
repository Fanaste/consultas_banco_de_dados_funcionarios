-- Código das consultas realizadas em SQLite online--

-- Etapa 1 
Id INT PRIMARY KEY, 
  Nome VARCHAR (100),
  Departamento VARCHAR (100),
  Salario FLOAT);
  
-- Etapa 2 
  Insert INTO funcionarios (
    id,
    nome,
    departamento,
    salario)
VALUES
(1, 'Heitor Vieira', 'Financeiro', 4959.22),
(2, 'Daniel Campos', 'Vendas', 3884.44),
(3, 'Luiza Dias', 'TI', 8205.78),
(4, 'Davi Lucas Moraes','Financeiro', 8437.02),
(5, 'Pietro Cavalcanti', 'TI', 4946.88),
(6, 'Evelyn da Mata', 'Vendas', 5278.88),
(7, 'Isabella Rocha', 'Marketing', 4006.03),
(8, 'Sra. Manuela Azevedo', 'Vendas', 6101.88),
(9, 'Brenda Cardoso', 'TI', 8853.34),
(10, 'Danilo Souza', 'TI', 8242.14);

-- Etapa 3 
SELECT * FROM funcionarios
WHERE salario > 5000;

SELECT DISTINCT departamento FROM funcionarios;

-- Etapa 4  
UPDATE funcionarios
SET salario = 7500
WHERE departamento = 'TI';


-- Etapa 5 
DELETE FROM funcionarios 
WHERE salario < 4000;


-- Etapa 6 
SELECT * FROM funcionarios
WHERE departamento = 'Vendas' AND salario < 6000;


-- Etapa 7 
CREATE TABLE projetos (
  id_projeto INT PRIMARY KEY,
  nome_projeto VARCHAR (100),
  id_gerente INT,
  FOREIGN KEY (id_gerente) REFERENCES funcionarios(id)
);

-- Etapa 8 
INSERT INTO projetos (id_projeto, nome_projeto, id_gerente)
VALUES 
(01, 'cobalto', 036),
(02, 'macadâmia', 019),
(03, 'japão', 034)


-- Etapa 9  
SELECT * FROM projetos
WHERE id_gerente = 19;

-- Etapa 10 
DROP TABLE funcionarios; 