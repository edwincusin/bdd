--OBETENER EL CODIGO DE PROFESOR CON TODOS LOS NOMBRES Y APELLIDOS DE LOS ESTUDIANTES CUYO APELLIDO CONTIENE LETRA n
select pr.codigo, es.nombre, es.apellido from
profesores pr, estudiantes es
where pr.codigo = es.codigo_profesor
and es.apellido ilike '%n%';

--OBETENER TODOS LOS ESTUDIANTES CUYO CODIGO DE PROFESOR CORRESPONDE AL NOMBRE FANCISCO
select es.cedula, es.nombre , es.apellido, es.email,es.fecha_nacimiento,pr.codigo from
profesores pr, estudiantes es
where pr.codigo = es.codigo_profesor
and es.apellido ilike '%n%'
and pr.nombre ilike '%FRANCISCO%';


SELECT * FROM profesores