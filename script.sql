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
select * from contatos order by nome;
select * from contatos where idcon = 2;

/* CRUD UPDATE */
UPDATE contatos SET nome="douglas matos" WHERE idcon=2;
UPDATE contatos SET nome="Douglas Matos da Silva", fone="0909090909", email="doug@email.com" WHERE idcon=2;