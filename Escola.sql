create database escola;
use escola;

create table curso(
cursoID int not null primary key auto_increment,
cursoNome varchar (50) not null,
cursoRequisito text,
cursoCarga smallint,
cursoPreco double
);

create table instrutor(
instrutorID int not null primary key auto_increment,
instrutorNome varchar(50) not null,
instrutorEmail varchar(100) not null,
instrutorValor double(5,2) not null,
instrutorCert varchar(100)
);

create table turma(
turmaInicio date,
turmaFinal date,
turmaCarga smallint,
fk_instrutorID int not null,
fk_cursoID int not null, 
foreign key (fk_instrutorID) references instrutor (instrutorID),
foreign key (fk_cursoID) references curso (cursoID)
);

create table aluno(
alunoID int not null primary key auto_increment,
alunoNome varchar(50) not null,
alunoCPF int(11) not null,
alunoEmail varchar(100),
alunoFone int(11),
alunoData date
);

alter table turma add column turmaID int not null primary key auto_increment;
describe turma;

create table matricula(
matriculaID int not null primary key auto_increment,
matriculaData date not null,
fk_turmaID int not null,
fk_alunoID int not null,
foreign key (fk_turmaID) references turma(turmaID),
foreign key (fk_alunoID) references aluno(alunoID)
);

create index idx on turma(fk_cursoID);
create index idx2 on turma(fk_instrutorID);
create index idx on matricula(fk_alunoID);
create index idx2 on matricula(fk_turmaID);