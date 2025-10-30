--CONSULTA MOSTRAR NOMBRE Y CEDULA ESTUDIANTES--
select nombre, cedula from estudiantes;

--CONSULTA MOSTRAR NOMBRES CUYA CEDULA INICIE CON 17--
select nombre from estudiantes
where cedula like '17%';

--CONSULTA MOSTRAR NOMBRES COMPLETOS CUYO NOMBRE INICIE CON A--
select nombre||' '||apellido as "nombres completos" from estudiantes
where nombre like 'A%';

