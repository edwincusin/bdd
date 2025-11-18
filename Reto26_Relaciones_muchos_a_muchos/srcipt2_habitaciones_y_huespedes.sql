--2. HABITACIONES Y HUESPEDES

--CREAR TABLA HABITACIONES
create table habitaciones(
	habitacion_numero int not null,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,

	constraint habitaciones_pk primary key (habitacion_numero)
);

--CREAR TABLA HUESPEDES
create table huespedes (
	id int not null,
	nombres varchar(45) not null,
	apellidos varchar(45) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar(45), 
	pais varchar(45),

	constraint huespedes_pk primary key (id)
);

--CREAR TABLA DE ROMPIMIENTO 
create table reservas(
	inicio_fecha date not null,
	fin_fecha date not null,
	habitacion int not null,
	huesped_id int not null,
	
	--llaves foraneas
	constraint habitaciones_fk foreign key (habitacion) references habitaciones(habitacion_numero),
	constraint huespedes_fk foreign key (huesped_id) references huespedes(id),
	
	--clave compuesta
	constraint reservas_pk primary key (habitacion,huesped_id)
);

-----------------------------------------------------------------------------------------------
-----------------------------QUERYS RELACION MUCHOS A MUCHOS ----------------------------------

--CONSULTA 1:


--SUBCONSULTA 1:


--FUNCION DE AGREGACION 1:


---------------------------------------------------------------------

--CONSULTA 2:


--SUBCONSULTA 2:


--FUNCION DE AGREGACION 2:


---------------------------------------------------------------------
--CONSULTA 3:


--SUBCONSULTA 3:


--FUNCION DE AGREGACION 3:


---------------------------------------------------------------------


























