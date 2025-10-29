--5 inserciones tabla de videojuegos todos los campos--
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values (1, 'HALO', 'CIENCIA FICCION', 9),
		(2, 'FREE FIRE', 'ACCION', 10),
		(3, 'GTA V', 'ACCION, BANDAS', 8),
		(4, 'NEED FOR SPEED', 'CARRERAS AUTOS', 8),
		(5, 'MEDALLA DE HONOR', 'GUERRA ACCION', 10)



--3 inserciones tabla de videojuegos solo campos obligatorios--
insert into videojuegos(codigo, nombre, valoracion)
values (6, 'MARIO KART', 10),
		(7, 'DRAGON BALL Z', 7),
		(8, 'AJEDREZ', 7)


--consultar registros--
select * from videojuegos