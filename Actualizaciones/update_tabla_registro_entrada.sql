--ACTUALIZA TODAS LAS CEDULAS POR 082345679 PARA TODOS LOS REGISTROS DEL MES DE AGOSTO--
update registro_entrada set cedula_empleado='082345679'
where fecha
	between '2025/08/01' and '2025/08/31';

select * from registro_entrada;