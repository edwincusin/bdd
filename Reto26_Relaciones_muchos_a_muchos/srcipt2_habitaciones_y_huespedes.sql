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
select ha.habitacion_numero, hu.nombres, hu.apellidos
from habitaciones ha, huespedes hu, reservas re
where ha.habitacion_numero = re.habitacion and hu.id = re.huesped_id;

--SUBCONSULTA 1:
select hu.nombres, hu.apellidos
from huespedes hu
where id in(select huesped_id from reservas where habitacion = 2);

--FUNCION DE AGREGACION 1:
select ha.habitacion_numero, count(re.huesped_id)
from reservas re, habitaciones ha
where ha.habitacion_numero = re.habitacion 
group by ha.habitacion_numero;

---------------------------------------------------------------------

--CONSULTA 2:
select ha.habitacion_numero, ha.piso,hu.nombres, hu.apellidos
from habitaciones ha, huespedes hu, reservas re
where ha.piso = 4
and  ha.habitacion_numero = re.habitacion and hu.id = re.huesped_id

--SUBCONSULTA 2:
select hu.nombres, hu.apellidos
from huespedes hu
where id in (select re.huesped_id from reservas re where re.habitacion = 3);

--FUNCION DE AGREGACION 2:
select ha.habitacion_numero, round(avg(re.huesped_id),2)
from habitaciones ha, reservas re
where ha.habitacion_numero = re.habitacion 
group by ha.habitacion_numero

---------------------------------------------------------------------
--CONSULTA 3:
select ha.habitacion_numero, hu.nombres, hu.apellidos 
from habitaciones ha, reservas re, huespedes hu
where ha.habitacion_numero = re.habitacion and hu.id = re.huesped_id


--SUBCONSULTA 3:
select hu.nombres, hu.apellidos
from huespedes hu
where id in(select huesped_id
				from reservas
				where habitacion = 4
				);


--FUNCION DE AGREGACION 3:
select ha.habitacion_numero, round(sum(cast(ha.precio_por_noche as decimal)),2) as total_recaudado
from habitaciones ha, reservas re
where ha.habitacion_numero = re.habitacion
group by ha.habitacion_numero;

---------------------------------------------------------------------


























