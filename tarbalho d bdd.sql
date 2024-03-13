create database e_commerce;
use e_commerce;

create table dados_cliente(
id_cliente tinyint unsigned primary key auto_increment,
nome varchar (100) not null,
e_mail varchar(70) not null,
endereço varchar(100) not null,
telefone_fisico int(9) not null,
celular int(9) not null,
dat_d_nasciemnto date);

create table produto(
id_cliente tinyint unsigned primary key auto_increment,
nome varchar (100) not null,
preço decimal(6,2),
descrição varchar (100) not null,
quant_d_estoque int(99) 
);

create table pedidos(
id_produto tinyint unsigned primary key auto_increment,
num_d_ped int(99),
dat_d_comp datetime default current_date,
vlr_t decimal(6,2),
dat_estim_entregar datetime,
primary key(id_produtos)
foreign KEY(id_cliente) REFERENCES dados_cliente(id_cliente)
);

create table itens
id_itens tinyint unsigned primary key auto_increment,