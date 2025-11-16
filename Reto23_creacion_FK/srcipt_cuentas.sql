--CREACION TABLA USUARIO CON: 
--PK CEDULA
create table usuario (
	cedula char (10),
	nombre varchar (25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal,

	constraint cedula_pk 
	primary key (cedula)
);

--CREACION TABLA CUENTAS CON :
--SU PK NUMERO CUENTA
--Y SU FORENG KEY cedula_propietario
-- AQUI MISMO APLICO RELACION
create table cuentas (
	numero_cuenta char(5), 
	cedula_propietario char(10) not null,
	fecha_creacion date not null,
	saldo money not null,

	constraint numero_cuenta_pk 
	primary key (numero_cuenta),

	constraint cedula_propietario_fk 
	foreign key (cedula_propietario)
	references usuario(cedula)	
);

--INSERT TABLA USUARIO-- 
insert into usuario(cedula, nombre, apellido, tipo_cuenta, limite_credito)
valueS('1753081051','EDWIN','CUSIN','AHORROS',12.000),
		('1753081052','DANIEL','CHURO','AHORROS',2000),
		('1753081053','CARLOS','ANT','CORRIENTE',4000),
		('1753081054','MARIA','FONTE','AHORROS',3000),
		('1753081055','DELIA','LARA','CORRIENTE',1000),
		('1753081056','MAYTE','ORTIZ','AHORROS',12.000),
		('1753081057','GEOVANY','TOCTAGUANO','CORRIENTE',15.000),
		('1753081058','AMELIA','SANCHES','AHORROS',900.00),
		('1753081059','DIANA','CARRIEL','CORRIENTE',12.000),
		('1753081050','MARCO','GONZALES','AHORROS',12.000);


--INSERT TABLA CUENTAS--
insert into cuentas(numero_cuenta, cedula_propietario,fecha_creacion, saldo)
values ('12340','1753081050','2022-08-21',200),
		('12341','1753081051','2023-05-21',500),
		('12342','1753081052','2023-02-21',700),
		('12343','1753081053','2022-11-21',150),
		('12344','1753081053','2022-12-21',300),
		('12345','1753081054','2023-01-21',800),
		('12346','1753081055','2022-10-21',700),
		('12347','1753081056','2023-05-21',550),
		('12348','1753081057','2023-09-21',240),
		('12349','1753081059','2022-08-21',999);

		
select * from usuario;
select * from cuentas;
--delete from cuentas;










