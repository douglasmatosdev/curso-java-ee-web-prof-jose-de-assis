create database dbagenda;
show databases;
use dbagenda;
create table contatos(
	idcon int primary key auto_increment,
	nome varchar(50) not null,
	fone varchar(15) not null,
	email varchar(50)
);
show tables;
describe contatos;

/* CRUD CREATE	*/
insert into contatos (nome, fone, email) values ("Bill Gates", '111111111', 'bill@email.com');

/* CRUD READ */
select * from contatos;