create database teste
default charset utf8
default collate utf8_general_ci;

use teste;

create table alunos(
alunoRA varchar(10),
alunoNome varchar(10),
alunoCPF char(11),
alunoRG char(9));

create table curso(
cursoId int not null primary key auto_increment,
cursoNome varchar(45));

show tables;

Alter table alunos rename to aluno;
alter table aluno modify column alunoRA int not null auto_increment primary key;
alter table aluno modify column alunoNome varchar(45);
alter table aluno modify column alunoCPF varchar(11);
alter table aluno add column fk_cursoId int after alunoNome;
alter table aluno modify column fk_cursoId int not null;
alter table aluno add constraint fk_cursoId foreign key (fk_cursoId) references curso(cursoId);

create table professor(
profRA varchar(10),
profNOME varchar(1),
profCPF char(1),
profRG char(1),
profFOR varchar(1));

alter table professor modify column profRA int not null primary key auto_increment;
alter table professor modify column profNome varchar(50) not null;
alter table professor modify column profCPF char(11) not null;
alter table professor modify column profRG char(9) not null;
alter table professor modify column profFOR varchar(40);
alter table professor add column fk_cursoId int not null;
alter table professor add constraint pk_cursoId_fk_professor foreign key (fk_cursoId) references curso(cursoId);

describe professor

