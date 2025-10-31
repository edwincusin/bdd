--eliminar transferecnias que hayan hecho entre las 14h00 y 18h00 mes de agosto del año actual--
delete from transacciones 
where fecha
	between '2025/08/01' and '2025/08/31'
	and hora between '14:00' and '18:00';


select * from transacciones;