--1--
select * from registro_entrada
where EXTRACT(month from fecha) = 9
	or cedula_empleado like '17%';

--2--
select * from registro_entrada
where EXTRACT(month from fecha) = 8
	and cedula_empleado like '17%'
	and hora 
		between '08:00' and '12:00';

--3--
select * from registro_entrada
where (EXTRACT(month from fecha) = 8
	and cedula_empleado like '17%'
	and hora between '08:00' and '12:00'
) or (EXTRACT(month from fecha) = 9
	and cedula_empleado like '08%'
	and hora between '09:00' and '13:00'
);
