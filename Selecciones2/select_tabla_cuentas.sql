--1--
select numero_cuenta, saldo from cuentas
where saldo > money(100)
	and saldo < money(1000);

--2--
select * from cuentas 
where fecha_creacion
between (CURRENT_DATE - INTERVAL '1 year') and CURRENT_DATE;

--3--
select * from cuentas
where saldo = money(0)
	or cedula_propietario like '%2';