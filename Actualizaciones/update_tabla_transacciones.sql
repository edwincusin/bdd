--actualzia tipo de todos los regsitro que tenga una trans mayor a 100 y menor 500
--que se hayan llevado a cabo en el mes de sep 
--con horas entre 14:00 y 20:00
--con T
update transacciones set tipo='T'
where monto > money(100)
	and monto < money(500)
	and fecha
		between '01/09/2025' and '30/09/2025'
	and hora
		between '14:00' and '20:00';

select * from transacciones;