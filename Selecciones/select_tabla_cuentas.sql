--CONSULTA MOSTRAR NUMERO CUENTA Y SALDO DE TODAS LAS CUENTAS--
select numero_cuenta,saldo from cuentas; 

--CONSULTA DE REGISTROS ENTRE HOY DIA Y HASTA DOS MESES ANTES--
select * from cuentas
where fecha_creacion
between (current_date - interval '2 months') and current_date;

--CONSULTA NUMERO DE CUENTA Y EL SALDO DE LAS LAS CUENTAS DESDE HOY HASTA DOS MESES ANTES--
select numero_cuenta,saldo from cuentas
where fecha_creacion 
between (current_date - interval '2 months') and current_date;