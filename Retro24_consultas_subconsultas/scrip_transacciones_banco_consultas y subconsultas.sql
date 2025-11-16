--obtener todas la transacciones de tipo C cuyo numero de cuenta este entre 22001 y 22004
select * 
from transacciones tr, banco bc
where tr.codigo = bc.codigo_transaccion
and tr.tipo = 'C'
and numero_cuenta
between '22001' and '22004';




--obtener todos los datos de transacciones cuyo codigo corresponde al codigo de transaccion del vbanco con codigo 1
select * 
from transacciones tr, banco bc
where tr.codigo = bc.codigo_transaccion
and tr.tipo = 'C'
and tr.codigo= 1;
