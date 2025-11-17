-- RELACION VIDEOJUEGOS Y PLATAFORMAS 
--funcion agregacion1
SELECT codigo_videojuego, COUNT(id_plataforma) AS total_plataformas
FROM plataformas
GROUP BY codigo_videojuego



--funcion agregacion2
SELECT ROUND(
		AVG(
			CAST(valoracion AS DECIMAL)
		),2
	) AS valoracion_promedio
FROM videojuegos




select * from plataformas
select * from videojuegos