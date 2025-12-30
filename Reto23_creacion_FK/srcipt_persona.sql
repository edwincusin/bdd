--CREAR PERSONA CON SU PK--
create table persona(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date not null,
	hora_naciemiento time,
	cantidad_ahorrada money,
	numero_hijos int,

	constraint persona_pk primary key (cedula)
);

--CREAR TABLA PRESTAMO CON SUS:
--PK CEDULA
--FK CEDULA
create table prestamo(
	codigo int not null,
	cedula char(10), 
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40),

	constraint prestamo_pk primary key (codigo),

	constraint prestamo_cedula_fk 
	foreign key (cedula)
	references persona(cedula)
);

--INSERT DE LA TABLA PERSONA--
insert into persona (cedula, nombre, apellido, estatura,fecha_nacimiento, hora_naciemiento, cantidad_ahorrada, numero_hijos)
values ('1753081050','EDWIN','ANTAMBA',1.75,'23/01/1991','04:00',3000,1),
		('1753081051','SEAN','TORRES',1.70,'23/02/1992','02:00',2000,0),
		('1753081052','DIANA','SILVA',1.60,'23/03/1993','05:00',1000,4),
		('1753081053','ALEX','ORTIZ',1.55,'23/04/1994','02:00',5000,1),
		('1753081054','PEDRO','CHIPUXI',1.70,'23/05/1995','14:00',300,0),
		('1753081055','DANIEL','MUGMAL',1.68,'23/06/1996','15:00',30,3),
		('1753081056','NATALY','SANCHEZ',1.59,'23/07/1997','19:00',100,1),
		('1753081057','MARIA','GUZMAN',1.68,'23/08/1998','20:00',800,2),
		('1753081058','JOSE','TORRES',1.58,'23/09/1999','22:00',200,0),
		('1753081059','GEOVANY','CUSIN',1.67,'23/11/2000','23:00',1500,0);
		

--INSERT DE LA TABLA PRESTAMO--
insert into prestamo(codigo,cedula, monto, fecha_prestamo,hora_prestamo,garante)
values(1,'1753081056',500,'15/10/2025','10:00','CARLOS CHIZA'),
		(2,'1753081056',200,'11/11/2025','11:00','GEOVANY ANT'),
		(3,'1753081053',300,'12/02/2025','12:00','PEDRO CALAPAQUI'),
		(4,'1753081054',400,'13/03/2025','13:00','DANIEL LOOR'),
		(5,'1753081055',500,'14/04/2025','14:00','LADY LOOR'),
		(6,'1753081057',600,'01/05/2025','15:00','FREDY CASTAÑEDA'),
		(7,'1753081058',700,'17/06/2025','16:00','EDISON PEREZ'),
		(8,'1753081059',800,'21/07/2025','13:00','OSCAR TITUAÑA'),
		(9,'1753081050',900,'25/08/2025','14:00','GABY CORDOBA'),
		(10,'1753081050',999,'29/09/2025','11:00','SANDRA RAMIREZ');



select *from persona;
select * from prestamo;

drop table persona;

drop table prestamo;
