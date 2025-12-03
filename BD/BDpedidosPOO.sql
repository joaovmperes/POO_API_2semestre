DROP DATABASE PEDIDOS;
CREATE DATABASE PEDIDOS;

USE PEDIDOS;
DROP TABLE PEDIDO;
DROP TABLE CLIENTE;
DROP TABLE PRODUTO;
DROP TABLE ITEM_PRODUTO CASCADE;

create table PEDIDO (
NUMERO INT PRIMARY KEY auto_increment,
total_fatura decimal,	
CEP varchar(10),	
CODIGO_CLI INT not null
);

create table CLIENTE (
CODIGO int not null auto_increment,
NOME varchar(60),
CEP varchar(10) ,
constraint PK_CLIENTE primary key (CODIGO)
);

create table PRODUTO (
id INT not null auto_increment,
DESCRICAO varchar(80),
TIPO varchar(10) ,
constraint PK_PRODUTO primary key (id)
);

create table ITEM_PRODUTO (
   id_PRO           INT                not null,
   NUMERO_PED           INT             not null,
   constraint PK_ITEM_PRODUTO primary key (id_PRO, NUMERO_PED)
);

alter table ITEM_PRODUTO
   add constraint FK_ITEM_PRODUTO foreign key (id_PRO)
      references PRODUTO (ID);
      
alter table ITEM_PRODUTO
   add constraint FK_ITEM_PEDIDO foreign key (numero_Ped)
      references PEDIDO (NUMERO);
      
      alter table PEDIDO
   add constraint FK_PED_CLIENTE foreign key (codigo_CLI)
      references CLIENTE (CODIGO);
      
      select * from produto;	
      select * from cliente;
      select * from pedido;
      select * from item_produto;