--creamos tablas para ejercicios de ROMPIMIENTO
create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	stock int not null,

	constraint productos_pk primary key (codigo)
);

create table proveedores(
	codigo int not null,
	nombre varchar(50) not null,
	telefono varchar(10),
	constraint proveedores_pk primary key (codigo)
);


--crear tabla de rompimiento 
create table productos_por_proveedor(
	pp_codigo_producto int not null,
	pp_codigo_proveedor int not null,
	precio money not null,

	--relacionamos la claves foraneas
	constraint producto_fk 
	foreign key (pp_codigo_producto)
	references productos(codigo),

	constraint proveedor_fk 
	foreign key (pp_codigo_proveedor)
	references proveedores(codigo),
	
	--clave primarai compuesta

	constraint pp_codigo_producto_pk
	primary key (pp_codigo_producto,pp_codigo_proveedor)
);


--insert datos en las tablas
insert into productos(codigo, nombre, stock)
values (100,'DORITOS',100),
		(200,'KACHITOS',200),
		(300,'PAPAS',300),
		(400,'TAKIS',0);

insert into proveedores(codigo, nombre, telefono)
values (1,'SNACKS. SA','0999999999'),
		(2,'DISTRICSNASCKS','0988888888');


--insert en la tabla rompimiento 

insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
values (300,1,0.48),
		(300,2,0.49),
		(100,1,0.50),
		(200,1,0.51),
		(400,2,0.5);

--tratar de replicar una calve compuesta -- NO ME PERMITE 
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
values (300,1,0.48);


SELECT * FROM productos;
SELECT * FROM proveedores;
SELECT * FROM	productos_por_proveedor;


--SELECT CON LA TABLA DE LA CLAVE COMPUESTA
select *
from productos prod, proveedores prov, productos_por_proveedor pp
where pp.pp_codigo_producto = prod.codigo and pp.pp_codigo_proveedor = prov.codigo

select prod.codigo, prod.nombre, prov.nombre 
from productos prod, proveedores prov, productos_por_proveedor pp
where pp.pp_codigo_producto = prod.codigo and pp.pp_codigo_proveedor = prov.codigo


select prod.codigo, prod.nombre, prov.nombre, pp.precio
from productos prod, proveedores prov, productos_por_proveedor pp
where pp.pp_codigo_producto = prod.codigo and pp.pp_codigo_proveedor = prov.codigo
and pp.pp_codigo_producto = 300






