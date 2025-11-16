--CREAR TABLA EMPLEADO CON SU PK--
create table empleado(
	codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,

	constraint empleado_pk primary key (codigo_empleado)
);

--CREAR TABLA REGISTRO_ENTRADA CON SUS
--PK CODIGO REGISTRO
--FK CODIGO EMPLEADO
create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null, 
	codigo_empleado int not null,

	constraint registros_entrada_pk primary key (codigo_registro),

	constraint resgistros_entrada_codigo_empleado_fk 
	foreign key (codigo_empleado)
	references empleado(codigo_empleado)
);

--INSERT TABLA EMPLEADO--
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2201,'DANIEL CANTOS','22/09/2025','08:00'),
		(2301,'CARLA ANT','22/09/2025','08:00'),
		(2401,'ELVIS CUSIN','22/09/2025','08:00'),
		(2501,'VALENTIN TACO','22/09/2025','08:00'),
		(2601,'DANIELA ACOSTA','22/10/2025','08:00'),
		(2701,'SOÑIA SILVER','22/11/2025','08:00'),
		(2801,'SINDY  MITSY','22/11/2025','08:00'),
		(2901,'JHON MEJIA','22/08/2025','08:00'),
		(2001,'RICHARD MALDONADO','22/05/2025','08:00'),
		(2551,'CAROLINA LOOR','22/09/2025','08:00');
		
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values (1,'1753081050','2023/08/02','08:00',2201),
		(2,'1753081051','2023/09/20','09:00',2301),
		(3,'1753081052','2023/10/15','10:00',2401),
		(4,'1753081053','2023/11/25','08:20',2501),
		(5,'1753081054','2023/12/30','11:00',2701),
		(6,'1753081055','2023/08/10','12:00',2801),
		(7,'1753081056','2023/09/14','13:00',2901),
		(8,'1753081057','2023/10/12','12:50',2001),
		(9,'1753081058','2023/11/30','10:00',2551),
		(10,'1753081059','2023/12/8','08:00',2201);


select * from empleado;
select * from registros_entrada;















