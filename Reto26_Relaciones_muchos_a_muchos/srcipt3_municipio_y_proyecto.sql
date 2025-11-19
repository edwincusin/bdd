--3. MUNICIPIO Y PROYECTO

--CREAR TABLA CIUDAD
create table ciudad(
	id int not null,
	nombre varchar(45) not null,
	
	constraint ciudad_pk primary key (id)
);

--CREAR TABLA MUNICIPIO
create table municipio (
	id int not null,
	nombre varchar(45) not null,
	ciudad_id int not null, -- llave foranea

	constraint municipio_pk primary key (id),
	constraint ciudad_fk foreign key (ciudad_id) references ciudad(id)
);

--CREAR TABLA PROYECTO
create table proyecto(
	id int not null,
	proyecto varchar (50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,

	constraint proyecto_pk primary key (id)
);

--CREAR TABLA ROMPIMIENTO 
create table proyecto_municipio(
	municipio_id int not null,
	proyecto_id int not null,	
	
	--llaves foraneas
	constraint municipio_fk foreign key (municipio_id) references municipio(id),
	constraint proyecto_fk foreign key (proyecto_id) references proyecto(id),
	
	--clave compuesta
	constraint proyecto_municipio_pk primary key (municipio_id,proyecto_id)
);



-----------------------------------------------------------------------------------------------
-----------------------------QUERYS RELACION MUCHOS A MUCHOS ----------------------------------

--CONSULTA 1:
select mu.nombre,pro.proyecto
from municipio mu, proyecto pro, proyecto_municipio pm
where mu.id = pm.municipio_id and pro.id = pm.proyecto_id;


--SUBCONSULTA 1:
select proyecto
from proyecto 
where id in(
			select  proyecto_id
			from proyecto_municipio
			where municipio_id = 1
			);

--FUNCION DE AGREGACION 1:
select mu.nombre, count(pm.proyecto_id)
from municipio mu, proyecto_municipio pm 
where mu.id = pm.municipio_id
group by mu.nombre;

---------------------------------------------------------------------

--CONSULTA 2:
select mu.nombre, pro.proyecto
from municipio mu, proyecto pro, proyecto_municipio pm
where mu.id = pm.municipio_id and pro.id = pm.proyecto_id
	and mu.nombre ilike '%gad%';


--FUNCION DE AGREGACION 2:
select mu.nombre, min(pm.proyecto_id)
from municipio mu, proyecto_municipio pm
where mu.id = pm.municipio_id
group by mu.nombre;

---------------------------------------------------------------------
--CONSULTA 3:
select mu.nombre, ci.nombre 
from municipio mu, ciudad ci
where mu.ciudad_id = ci.id;

--SUBCONSULTA 3:
select proyecto
from proyecto 
where id in(
				select proyecto_id 
				from proyecto_municipio
				where municipio_id = 3
			);

--FUNCION DE AGREGACION 3:
select mu.nombre, max(pm.proyecto_id)
from municipio mu, proyecto_municipio pm
where mu.id = pm.municipio_id
group by mu.nombre;

---------------------------------------------------------------------






































