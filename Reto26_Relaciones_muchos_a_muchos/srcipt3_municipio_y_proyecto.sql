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






































