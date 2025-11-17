-- RELACION ESTUDIANTES Y PROFESORES 
--funcion agregacion1
SELECT codigo_profesor, COUNT(codigo_profesor) AS total_estudiantes
FROM estudiantes
GROUP BY codigo_profesor



--funcion agregacion2
SELECT ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE) - (EXTRACT( YEAR FROM estudiantes.fecha_nacimiento)))) AS edad_promedio
FROM estudiantes


--funcion agregacion2 OTRO METODO 
SELECT ROUND(AVG(EXTRACT(YEAR FROM AGE(CURRENT_DATE, fecha_nacimiento))))
FROM estudiantes




select * from profesores
select * from estudiantes