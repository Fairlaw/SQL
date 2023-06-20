-- CRIAR DATABASE aula

CREATE DATABASE aula;

-- USE aula

USE aula;

-- CRIAR TABELA ALUNOS

create table aluno(

    aluno_nome varchar(150),
    aluno_cod int not null AUTO_INCREMENT PRIMARY KEY,
    sexo ENUM ('M','F'),
    mensalidade float (6,2),
    ano int 
);

INSERT INTO aluno (aluno_nome,sexo,mensalidade,ano)VALUES
('Fernando', 'M', 850, 2),
('Camila', 'F', 550, 1),
('Gabriel', 'M', 1200, 2),
('Juliana', 'F', 400, 3),
('Thiago', 'M', 700, 1),
('Aline', 'F', 600, 2),
('Rafaela', 'F', 900, 3),
('Ricardo', 'M', 1000, 1),
('Isabella', 'F', 800, 2),
('Gustavo', 'M', 750, 1),
('Carolina', 'F', 650, 2),
('Marcelo', 'M', 1100, 3),
('Vanessa', 'F', 500, 1),
('Guilherme', 'M', 900, 2),
('Patricia', 'F', 550, 3),
('Diego', 'M', 700, 1),
('Tatiana', 'F', 950, 2),
('Renato', 'M', 500, 1),
('Letícia', 'F', 750, 3),
('Rodrigo', 'M', 800, 2),
('Luisa', 'F', 450, 1),
('André', 'M', 600, 3),
('Jéssica', 'F', 700, 2),
('Vinicius', 'M', 950, 1),
('Mariana', 'F', 800, 3),
('Pedro', 'M', 550, 1),
('Amanda', 'F', 650, 2),
('Rafael', 'M', 900, 3),
('Bianca', 'F', 1000, 1),
('Lucas', 'M', 750, 2);

INSERT INTO aluno (aluno_nome,sexo,mensalidade,ano)VALUES
('Leonardo', 'M', 800, 2),
('Luana', 'F', 600, 1),
('Henrique', 'M', 1100, 2),
('Alessandra', 'F', 400, 3),
('Matheus', 'M', 700, 1),
('Vitória', 'F', 550, 2),
('Rodrigo', 'M', 900, 3),
('Larissa', 'F', 1000, 1),
('Rafael', 'M', 850, 2),
('Carolina', 'F', 750, 1),
('Guilherme', 'M', 650, 2),
('Juliana', 'F', 1200, 3),
('Fábio', 'M', 500, 1),
('Beatriz', 'F', 800, 2),
('Gustavo', 'M', 550, 3),
('Camila', 'F', 700, 1),
('Renato', 'M', 950, 2),
('Fernanda', 'F', 500, 1),
('Ricardo', 'M', 750, 3),
('Isabela', 'F', 900, 1),
('Thiago', 'M', 600, 2),
('Leticia', 'F', 450, 3),
('Alexandre', 'M', 850, 1),
('Mariana', 'F', 700, 2),
('Lucas', 'M', 950, 3),
('Natália', 'F', 800, 1),
('Daniel', 'M', 550, 2),
('Patrícia', 'F', 750, 3),
('Pedro', 'M', 1000, 1),
('Amanda', 'F', 650, 2),
('Vinicius', 'M', 900, 3),
('Laura', 'F', 500, 1),
('Rafael', 'M', 750, 2),
('Bianca', 'F', 1100, 3),
('André', 'M', 550, 1),
('Mariana', 'F', 800, 2),
('Gabriel', 'M', 600, 1),
('Camila', 'F', 950, 3),
('Luiz', 'M', 700, 2),
('Isabela', 'F', 850, 1),
('Felipe', 'M', 450, 2),
('Ana', 'F', 750, 3),
('Gustavo', 'M', 1000, 1),
('Larissa', 'F', 650, 2),
('Ricardo', 'M', 900, 3),
('Aline', 'F', 500, 1),
('Marcos', 'M', 800, 2),
('Carolina', 'F', 550, 3),
('Gabriela', 'M', 750, 1),
('Lucas', 'F', 1100, 2);

describe aluno
show tables
select * from aluno

select min(mensalidade) as Mensalidade from aluno
select max(mensalidade) as Mensalidade from aluno
select count(*) as Total from aluno
select count(*) as Total from aluno where mensalidade<500
select count(*) as 'número de pessoas com sexo feminino' from aluno where sexo = 'F'
select count(*) as "masculino" from aluno where sexo = "M"
select count(ano) as Ano from aluno where ano = 1
select avg(mensalidade) as MÉDIA from aluno
select avg(mensalidade) as MÉDIA from aluno where mensalidade<1000
select sum(mensalidade) as soma from aluno
select sum(mensalidade) as soma from aluno order by mensalidade limit 1
select * from aluno where aluno_cod >=30 order by ano desc

create index idx on aluno(aluno_nome)
create index alunoCod on aluno(aluno_cod)

show index from aluno

select * from aluno

update aluno set mensalidade = 500 where aluno_cod = 2
update aluno set mensalidade = 3000 where aluno_cod = 4
update aluno set mensalidade = 2000 where aluno_cod >= 75

delete from aluno where aluno_cod = 1
delete from aluno where aluno_cod = 3