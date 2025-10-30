--crea la tabla clientes
create table clientes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	edad int,
	constraint clientes_pk primary key(cedula)
)

--borrar tabla 
drop table clientes

--insertar datos dentro de una tabla

insert into clientes(cedula,nombre, apellido)
values ('1753081056','EDWIN','CUSIN')
insert into clientes(cedula,nombre, apellido, edad)
values ('1753081058','GEOVANNY','ANTAMBA',40)


--recuperar o consultar registros seleccionando los campos--
select cedula, nombre, apellido, edad from clientes

--recuperar o consultar con * todo los campos segun el orden creado--
select * from clientes


