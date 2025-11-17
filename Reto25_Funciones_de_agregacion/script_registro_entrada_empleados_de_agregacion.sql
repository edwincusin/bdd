-- RELACION REGISTRO_ENTRADA Y EMPLEADO  
--funcion agregacion1
SELECT cedula_empleado, COUNT(*) AS total_registros_entrada
FROM registros_entrada
GROUP BY cedula_empleado



--funcion agregacion2
SELECT MIN(fecha) as fecha_minima, MAX(fecha) as fecha_maxima
FROM registros_entrada




select * from registros_entrada
select * from empleado