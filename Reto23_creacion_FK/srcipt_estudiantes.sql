--CREAR TABLA PROFESORES CON SU PK--
create table profesores(
	codigo int,
	nombre varchar(50) not null,

	constraint profesores_pk primary key (codigo)
); 

--CREAR TABLA ESTUDIANTES CON SUS
--PK CEDULA
--FK CODIGO PROFESOR
create table estudiantes(
	cedula char (10),
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date,
	codigo_profesor int,

	constraint estudiantes_pk primary key (cedula),

	constraint estudiantes_codigo_profesor_pk 
	foreign key (codigo_profesor)
	references profesores(codigo)
	
);


--INSERT DATOS TABLA PROFESORES--
insert into profesores(codigo, nombre)
values (1,'EDWIN TORRES'),
		(2,'MARCO CORDOBA'),
		(3,'WILMER SILVA'),
		(4,'ALEJANDRA PUJOTA'),
		(5,'NANCY TACO'),
		(6,'STIVEN CELESTE'),
		(7,'FRANCIS ROJAS'),
		(8,'ELENA TORRES'),
		(9,'FRANCISCO TORRES'),
		(10,'CARLOS PANTOJA');
		
insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
values('1753081050','EDWIN','CUSIN','egca1@gmail.com','23/06/1996',2),
		('1753081051','DAVID','ANT','egca2@gmail.com','26/02/1999',2),
		('1753081052','JHON','PAMBA','egca3@gmail.com','20/05/1998',2),
		('1753081053','GABY','NURIAGA','egca4@gmail.com','22/02/1995',5),
		('1753081054','MARIA','NASIMBA','egca5@gmail.com','29/11/1994',5),
		('1753081055','JOSE','NIEVES','egca6@gmail.com','12/12/1993',5),
		('1753081056','LUIS','SALAZAR','egca7@gmail.com','15/10/2000',9),
		('1753081057','ELVIS','ANTAMBA','egca8@gmail.com','08/09/2001',9),
		('1753081058','CARLOS','SANTOS','egca9@gmail.com','03/08/2003',9),
		('1753081059','DANIELA','CHIRIBOGA','egca00@gmail.com','13/07/2005',1);




select *from profesores;
select * from estudiantes;









