--obtener la cantidad ahorrada el monto del prestamo y el garante de las persoas cuyo prestamo esta entre 100 y 1000
select per.cantidad_ahorrada, ptm.monto, ptm.garante from 
persona per, prestamo ptm
where per.cedula = ptm.cedula
and (ptm.monto > 100::money and ptm.monto < 1000::money);


--obtener la cantidad ahorrada el monto del prestamo y el garante de las persoas cuyo prestamo esta entre 100 y 1000
select per.* 
from persona per
where  per.nombre = 'SEAN';