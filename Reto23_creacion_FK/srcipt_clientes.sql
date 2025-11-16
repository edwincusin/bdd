--CREAION TABLA CLIENTES CON SU PRIMARY KEY--
create table clientes(
	cedula char(10),
	nombre varchar(50) not null,
	apellido  varchar(50) not null,

	constraint clientes_pk primary key (cedula)
);

--CREACION TABLA COMPARAS CON:
--PK ID_COMPRAS
--FK CEDULA
create table compras(
	id_compras int,
	cedula char(10) not null,
	fecha_compra date not null,
	monto decimal,

	constraint compras_pk primary key (id_compras),

	constraint compras_cedula_fk
	foreign key (cedula)
	references clientes(cedula)
	
);

--INSERTAR DATOS EN CLIENTES---
insert into clientes(cedula, nombre, apellido)
values ('1753081050','EDWIN', 'CUSIN'),
		('1753081051','DANIELA', 'ANT'),
		('1753081052','CARLITOS', 'SIMBAÑA'),
		('1753081053','MONICA', 'LEMA'),
		('1753081054','JOSE', 'TORRES'),
		('0053081055','DELIA', 'GUZMA'),
		('1003081056','AMELIA', 'LEMAI'),
		('1753081057','KELLY', 'YACHA'),
		('1753081058','MONICA', 'MULE'),
		('1003081059','ELIZ', 'TOAPAN');

insert into compras(id_compras, cedula, fecha_compra, monto)
values (1,'1753081050','2025/10/05',25),
		(2,'1753081050','2025/09/08',30),
		(3,'1753081052','2025/08/22',10),
		(4,'1753081053','2025/07/24',15),
		(5,'1753081054','2025/11/22',20),
		(6,'0053081055','2025/06/24',22),
		(7,'1753081058','2025/10/12',14),
		(8,'1003081059','2025/10/28',13),
		(9,'1003081056','2025/11/22',5),
		(10,'1753081057','2025/09/14',18);

select * from clientes, compras;
select * from compras;
select * from clientes;

