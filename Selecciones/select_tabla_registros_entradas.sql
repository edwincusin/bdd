--MOSTRAR REGISTROS DE TODAS LAS CEDULAS, FECHA Y HORA DE LOS RESGITROS DE ENTRADA--
select cedula_empleado, fecha, hora from registro_entrada;

--MOSTRAR REGISTROS ENTRADA ENTRE 07H00 A 14H00--
select * from registro_entrada
where hora
	between '07:00' and '14:00';

--MOSTRAR REGITROS HORA MAYOR A 08H00--
select * from registro_entrada 
where hora > '08:00';