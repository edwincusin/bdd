--crear tabla personas--
create table personas(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,

	constraint personas_pk primary key(cedula)
);

--insertar registros en las tablas--
insert into personas(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
values ('1753081050', 'EDWIN', 'CUSIN', 1.70, '23/06/1997', '04:00', 5000.00, 1),
		('1753081051', 'GEOVANY', 'ANTAMBA', 1.80, '14/02/1999', '17:00', 1000.00, 2),
		('1753081052', 'DANIELA', 'CHIZA', 1.70, '15/07/1994', '09:00', 100.00, 3),
		('1753081053', 'CARLA', 'CONEJO', 1.70, '03/11/2000', '12:00', 80.00, 2),
		('1753081054', 'JOSE', 'CHASIN', 1.70, '08/12/2003', '05:00', 100.00,1);


--consultar registros--
select * from personas


--consultar registros con where(donde)--
select * from personas where numero_hijos=2;
select numero_hijos,* from personas where numero_hijos=2

--consultar registros con where(donde), usuando (<> y =)--
select * from personas 
where estatura>1.70;

select * from personas 
where estatura>=1.60;


--consultar registros con comparar hora y fecha--
--uso del between y and son para rangos--
select * from personas
where fecha_nacimiento >='1999-12-08';

select * from personas
where fecha_nacimiento
between '1990/12/08' and '1999/01/01'


select * from personas
where hora_nacimiento >='12:00:00';

select * from personas
where hora_nacimiento
between '08:00' and '14:00';

--consultar registros con LIKE (referencias en un dato)--
--porcentaje % significa qeu existe algo sea al frente o detras de la letra
select * from personas 
where nombre like 'D%'; -- AL INICIO DE LA PALABRA

select * from personas 
where nombre like '%A'; -- AL FINAL DE LA PALABRA

select * from personas 
where nombre like '%A%'; -- ENTRE MEDIO LA PALABRA

select * from personas 
where cedula like '17%';


--consultar datos que esten null-- is null / is not null
select * from personas 
where estatura is null;

select * from personas 
where numero_hijos is not null;

select * from personas 
where numero_hijos is null;


-- consultar registrar DIFERENTE A UN VALOR (! o <>)-- no trae null
select * from personas 
where estatura !=1.58

select * from personas 
where estatura <>1.58

select * from personas 
where numero_hijos !=2

select * from personas 
where numero_hijos <>2







