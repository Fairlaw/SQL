CREATE DATABASE O_Mecanica;
use o_mecanica;

create table mecanico(
idMecanico int not null primary key auto_increment,
nome varchar(45) not null,
celular char(11) not null,
cpf char(11) not null
);

create table cliente(
idCliente int not null primary key auto_increment,
clienteNome varchar(45) not null,
clienteTelefone char(11) not null,
clienteCPF char(11) not null,
clienteCNH varchar(20) not null
);

create table veiculo(
idVeiculo INT not null primary key auto_increment,
placa varchar(10) not null,
marca varchar(45) not null,
modelo varchar(45) not null,
ano date not null,
fk_cliente_id int not null,
foreign key (fk_cliente_id) references cliente(idCliente)
);

create table OS(
idOrder int not null primary key auto_increment,
dataENTRADA date not null,
dataSAIDA date not null,
fk_mecanico_id int not null,
fk_veiculo_id int not null,
fk_cliente_id int not null,
foreign key (fk_mecanico_id) references mecanico(idMecanico),
foreign key (fk_veiculo_id) references veiculo(idVeiculo),
foreign key (fk_cliente_id) references cliente(idCliente)
);