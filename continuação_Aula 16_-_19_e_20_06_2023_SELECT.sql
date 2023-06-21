CREATE FUNCTION Multi
(
	A INT,
    B INT
)
RETURNS INT RETURN A * B;

SELECT Multi(3,5) AS RESULTADO;
-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

CREATE FUNCTION PORCENTAGEM(
A INT,
B INT
) RETURNS DECIMAL(50,13) RETURN A * B /100;

SELECT PORCENTAGEM(10,200) AS RESULTADO;
-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

CREATE FUNCTION VER_NOME(
A int
) RETURNS VARCHAR(50) RETURN 
(SELECT CONCAT('Nome = ', aluno_nome)
from aluno where aluno_cod = A);

select ver_nome(2) as Aluno;
-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

CREATE PROCEDURE aluno() SELECT * FROM ALUNO;

call aluno;
-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

CREATE PROCEDURE Mensal (x int) SELECT CONCAT("MENSALIDADE = ", mensalidade)
 AS Mensalidade From aluno where aluno_cod = x;

call Mensal(5);
-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

CREATE PROCEDURE MensalAluno (x int) SELECT CONCAT('ALUNO = ', aluno_nome, ' | ','MENSALIDADE = ', mensalidade)
As 'Aluno | Mensalidade' from aluno where aluno_cod = x;

call MensalAluno(7);

DROP PROCEDURE IF EXISTS mensalaluno;
-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
CREATE PROCEDURE MensalAluno2 (x int,y int) SELECT(aluno_nome,mensalidade)
As Aluno, Mensalidade from aluno where (aluno_cod,mensalidade) = (x,y);

call MensalAluno2(7,7);
*/

SELECT count(DISTINCT mensalidade) from aluno;

SELECT * FROM ALUNO WHERE ano IN(2) AND mensalidade = 2000
LIMIT 0, 30;

SELECT * FROM ALUNO WHERE sexo IN('M') AND mensalidade = 2000
LIMIT 0, 30;

select cliente.cliente_nome, cliente.cliente_cod, produto.produto_cod, produto.produto_nome
from cliente join produto limit 0,30;  

use loja_virtual_fixed;

select user from mysql.user  
create user lucas@host identified by '123456'
rename user lucas@host to cusla@host
drop user cusla@host