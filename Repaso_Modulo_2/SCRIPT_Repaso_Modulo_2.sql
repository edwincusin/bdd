--CODIGO ANTES DE CREAR LOS SCRIPTS PARA LAS TABLAS E INTERT--
drop table if exists historial_movimientos;
drop table if exists productos;
drop table if exists categorias; 


----------SCRIPTS PARA CRRACION DE TABLAS----------------
--TABLA CATEGORIA
--LLAVE PRIMARIA ID
CREATE TABLE categorias(
	id char(4) not null,
	nombre varchar(20) not null, 

	CONSTRAINT categorias_pk PRIMARY KEY (id)
);

--TABLA PRODUCTOS
--LLAVE PRIMARIA ID
--LLAVE FORANEA ID_CATEGORIA
CREATE TABLE productos(
	id char(5) not null,
	nombre varchar(25) not null,
	precio_venta money not null,
	precio_compra money not null,
	id_categoria char(4) not null,

	CONSTRAINT productos_pk PRIMARY KEY (id),
	CONSTRAINT categoria_fk
	FOREIGN KEY (id_categoria)
	REFERENCES categorias(id)
);

--TABLA HISTORIAL_MOVIMIENTOS
--LLAVE PRIMARIA ID - SERIAL
--LLAVE FORANEA ID_PRODUCTOS
CREATE TABLE historial_movimientos(
	id serial not null,
	id_producto char(5) not null, 
	cantidad int not null, 
	fecha_movimientos TIMESTAMP not null, 

	CONSTRAINT historial_movimientos_pk PRIMARY KEY (id),
	CONSTRAINT productos_fk 
	FOREIGN KEY (id_producto)
	REFERENCES productos(id)
);


----------INSERT PARA POBLAR LAS TABLAS-------------------
--INSERT TABLA CATEGORIAS
INSERT INTO categorias(id,nombre)
VALUES ('C001','Bebidas'),
		('C002','Snacks'),
		('C003','Golosinas');		

--INSERT TABLA PRODUCTOS
INSERT INTO productos(id,nombre,precio_venta,precio_compra,id_categoria)
VALUES('P0001', 'Coca cola 300ml', 0.7, 0.55,'C001'),
		('P0002', 'Coca cola 1000ml', 1, 0.8,'C001'),
		('P0003', 'Doritos 50g', 0.5, 0.42,'C002'),
		('P0004', 'Manicho', 0.25, 0.21,'C003'),
		('P0005', 'Tango', 0.5, 0.42,'C003');
		
--INSERT TABLA HISTORIAL_MOVIMIENTOS
INSERT INTO historial_movimientos(id_producto,cantidad,fecha_movimientos)
VALUES ('P0001',10,'28/10/2020 09:45'),
		('P0002',-3,'28/10/2020 10:49'),
		('P0001',5,'28/10/2020 12:23');


----------CONSULTAS DE LAS TABLAS TODOS LOS REGISTROS--------

SELECT * FROM productos;
SELECT * FROM categorias;
SELECT * FROM historial_movimientos;