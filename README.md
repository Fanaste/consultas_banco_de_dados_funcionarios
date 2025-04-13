# 🗃️ Projeto de Banco de Dados: Funcionários & Projetos

Este script SQL demonstra a criação e manipulação de duas tabelas em um banco de dados: `funcionarios` e `projetos`. Ele aborda desde a criação até consultas, atualizações e exclusões de dados.

---

## 📌 Etapa 1: Criação da Tabela `funcionarios`

```sql
CREATE TABLE funcionarios (
  Id INT PRIMARY KEY,
  Nome VARCHAR(100),
  Departamento VARCHAR(100),
  Salario FLOAT
);
```

- Criação da tabela `funcionarios` com os campos: `Id`, `Nome`, `Departamento` e `Salario`.

---

## 🧑‍💼 Etapa 2: Inserção de Dados na Tabela `funcionarios`

```sql
INSERT INTO funcionarios (id, nome, departamento, salario)
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
```

- Inserção de 10 registros com dados fictícios de funcionários.

---

## 🔍 Etapa 3: Consultas à Tabela `funcionarios`

### Funcionários com salário maior que R$ 5.000
```sql
SELECT * FROM funcionarios
WHERE salario > 5000;
```

### Departamentos distintos
```sql
SELECT DISTINCT departamento FROM funcionarios;
```

---

## 🛠️ Etapa 4: Atualização de Dados

### Aumentar o salário dos funcionários da área de TI para R$ 7.500
```sql
UPDATE funcionarios
SET salario = 7500
WHERE departamento = 'TI';
```

---

## 🧹 Etapa 5: Exclusão de Dados

### Remover funcionários com salário abaixo de R$ 4.000
```sql
DELETE FROM funcionarios 
WHERE salario < 4000;
```

---

## 🔎 Etapa 6: Consulta com Filtros Combinados

### Funcionários da área de Vendas com salário menor que R$ 6.000
```sql
SELECT * FROM funcionarios
WHERE departamento = 'Vendas' AND salario < 6000;
```

---

## 🏗️ Etapa 7: Criação da Tabela `projetos`

```sql
CREATE TABLE projetos (
  id_projeto INT PRIMARY KEY,
  nome_projeto VARCHAR(100),
  id_gerente INT,
  FOREIGN KEY (id_gerente) REFERENCES funcionarios(id)
);
```

- Criação da tabela `projetos`, com chave estrangeira ligada ao `id` da tabela `funcionarios`.

---

## 📥 Etapa 8: Inserção de Dados na Tabela `projetos`

```sql
INSERT INTO projetos (id_projeto, nome_projeto, id_gerente)
VALUES 
(01, 'cobalto', 02),
(02, 'macadâmia', 06),
(03, 'japão', 09);
```

---

## 🔎 Etapa 9: Consulta na Tabela `projetos`

### Projetos gerenciados pelo ID 19
```sql
SELECT * FROM projetos
WHERE id_gerente = 19;
```

---

## 🧨 Etapa 10: Remoção da Tabela `funcionarios`

```sql
DROP TABLE funcionarios;
```

⚠️ **Atenção:** Esta ação **deleta permanentemente** a tabela `funcionarios` e todos os dados contidos nela.

---

## ✅ Sobre o que eu aprendi:

- Criação de tabelas com chaves primárias e estrangeiras.
- Inserção, consulta, atualização e exclusão de dados.
- Uso de cláusulas `WHERE`, `DISTINCT`, `INSERT INTO`, `DROP`, `UPDATE` e muito mais.
