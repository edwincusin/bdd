--ACTUALIZAR APELLIDO POR HERNANDEZ A ESTUDIANTES QUE TENGAN CEDULA QUEINICIE CON 17--
update estudiantes set apellido='HERNANDEZ'
where cedula like '17%';

select * from estudiantes;