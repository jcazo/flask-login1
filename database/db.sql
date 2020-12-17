drop database db_alumprof;

create database db_alumprof;

use db_alumprof;

CREATE TABLE usuarios (
  id int(5) NOT NULL primary key auto_increment,
  codigo varchar(50) NOT NULL,
  nombre varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  clave varchar(50) NOT NULL,
  tipo char(1) check (tipo='A' or tipo = 'P')
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

insert into usuarios(codigo,nombre,email,clave,tipo)
values ('201612345','Joel Ast','joela@abc.com','123456','A');
