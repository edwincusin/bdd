--SELECCIONAR TODOS LOS VIDEOJUEGOS QUE INICIEN CON C EN EL NOMBRE--
select * from videojuegos
where nombre like 'C%';

--SELECCIONAR VIDEO JUEGO CON VALORACION ENTRE 9 Y 10--
select * from videojuegos 
where valoracion
	between 9 and 10;

--SELECCIONAR LOS QUE TENGAN EN DESCRIPCION NULL -- 
select * from videojuegos 
where descripcion is null;