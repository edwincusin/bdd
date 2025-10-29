--5 inserciones tabla productos todos los campos--
insert into productos(codigo, nombre, descripcion, precio, stock)
values (1, 'LIBROS', 'BASE DE DATOS',80.00,99),
		(2, 'RESMA PAPEL', 'A4 BLANCO',5.00,120),
		(3, 'ESFEROS', 'AZUL',0.75,1000),
		(4, 'CUADERNOS', 'UNIVERSITARIOS',2.00,200),
		(5, 'MOCHILAS', 'NEGRO GRANDES',30,80)

--3 inserciones tabla productos solo campos obligatorios--
insert into productos(codigo,nombre, precio, stock)
values (6,'CARTULINAS',0.80,1000),
		(7,'MARCADORES',1.50,200),
		(8,'AUDIFONOS',10.00,70)

--consultar registros
select * from productos