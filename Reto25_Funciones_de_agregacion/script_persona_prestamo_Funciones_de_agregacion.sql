-- RELACION PERSONA Y PRESTAMO 
--funcion agregacion1
SELECT cedula, SUM(monto) AS monto_total_prestamos
FROM prestamo
GROUP BY cedula



--funcion agregacion2
SELECT count(*) AS total_personas
FROM persona
WHERE numero_hijos > 1




select * from prestamo
select * from persona