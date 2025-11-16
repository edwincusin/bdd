--CREAR TABLA PRODUTOS CON SU PRIMARY KEY 
create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar (200), 
	precio money not null,
	stock int not null,

	constraint porductos_pk primary key (codigo)
);

--CREAR TABLA VENTAS CON SU:
--PK ID VENTAS
--FK codigo_producto
create table ventas(
	id_venta int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,

	constraint ventas_pk primary key (id_venta),

	constraint ventas_codigo_producto_fk
	foreign key (codigo_producto)
	references productos(codigo)
);

--INSERT DATOS TABLA PRODUCTOS
insert into productos(codigo, nombre, descripcion, precio, stock)
values (1,'GALLETAS','RICAS',0.50,50),
	(2,'CHOCOLATES','JET',0.5,40),
	(3,'MERMELADA','PIÑA',2,5),
	(4,'CHEETOS','SNAKS',0.90,15),
	(5,'YOGURTH','TONNY SABOR MORA',3,10),
	(6,'MANTEQUILLA','VEGETAL',1.50,20),
	(7,'JABON','PROTEX',1,55);

insert into productos(codigo, nombre, precio, stock)
values (8,'MAYONESA',0.75,12),
	(9,'CARAMELOS',0.05,100),
	(10,'SALSA TOMATE',0.1,22);

--INSERT DATOS TABLA VENTAS
insert into ventas(id_venta, codigo_producto, fecha_venta,cantidad)
values(1,1,'2025/05/20',4),
		(2,3,'2025/07/08',5),
		(3,2,'2025/06/02',4),
		(4,1,'2025/05/22',4),
		(5,4,'2025/09/21',1),
		(6,5,'2025/05/23',4),
		(7,4,'2025/10/24',10),
		(8,3,'2025/11/29',4),
		(9,7,'2025/07/12',5),
		(10,9,'2025/08/15',4);

select * from productos;
select * from ventas;






