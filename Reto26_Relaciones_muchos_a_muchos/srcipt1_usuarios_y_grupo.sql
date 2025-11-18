--1. USUARIO Y GRUPO

--CREAR TABLA USUARIOS
create table usuarios(
	id int not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,

	constraint usuarios_pk primary key (id)
);

--CREAR TABLA GRUPO
create table grupo (
	id int not null,
	nombre varchar(25) not null,
	descripcion varchar(75), 
	fecha_creacion date,

	constraint grupo_pk primary key (id)
);

--CREAR TABLA ROMPIMIENTO 
create table usuario_grupo(
	us_id int not null,
	gr_id int not null,
	
	--llaves foraneas
	constraint usuarios_fk foreign key (us_id) references usuarios(id),
	constraint grupo_fk foreign key (gr_id) references grupo(id),
	
	--clave compuesta
	constraint usuario_grupo_pk primary key (us_id,gr_id)
);

-----------------------------------------------------------------------------------------------
-----------------------------QUERYS RELACION MUCHOS A MUCHOS ----------------------------------
--CONSULTA 1:
select usr.nombre, grp.nombre
from usuarios usr, grupo grp, usuario_grupo usgr
where usgr.us_id = usr.id and usgr.gr_id = grp.id


--SUBCONSULTA 1:
select nombre
from usuarios
where  id IN(select us_id from usuario_grupo where gr_id=1);


--FUNCION DE AGREGACION 1:
select gr.nombre, count(ug.us_id)
from grupo gr, usuario_grupo ug
where gr.id=ug.gr_id
group by gr.nombre;

------------------------------------------------------------

--CONSULTA 2:
select usr.nombre, grp.nombre
from usuarios usr, grupo grp, usuario_grupo usgr
where usgr.us_id = usr.id and usgr.gr_id = grp.id
and grp.nombre ilike '%intensivo%'


--SUBCONSULTA 2:
select nombre
from usuarios
where  id IN(select us_id from usuario_grupo where gr_id=2);


--FUNCION DE AGREGACION 2:
select gr.nombre, max(ug.us_id), min(ug.us_id) 
from grupo gr, usuario_grupo ug
where gr.id = ug.gr_id
group by gr.nombre


----------------------------------------------------

--CONSULTA 3:
select usr.nombre, grp.fecha_creacion
from usuarios usr, grupo grp, usuario_grupo usgr
where usgr.us_id = usr.id and usgr.gr_id = grp.id
and grp.fecha_creacion 
between '2020/03/08' and '2022/03/08'


--SUBCONSULTA 3:
select nombre
from usuarios
where  id IN(select us_id from usuario_grupo where gr_id=3);


--FUNCION DE AGREGACION 3:
select gr.descripcion, count(ug.us_id)
from grupo gr, usuario_grupo ug 
where gr.id =ug.gr_id
group by gr.descripcion











