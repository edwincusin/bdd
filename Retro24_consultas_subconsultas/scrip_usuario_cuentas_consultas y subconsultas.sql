--OBTENER NUMERO CUENTA, NOMBRES DE USUARIO--
select cue.numero_cuenta, usr.nombre from 
cuentas cue, usuario usr
where cue.cedula_propietario = usr.cedula
	and (cue.saldo > money(100) and cue.saldo < money(1000));


--OBTENER TODOS LOS DATOS DE CUENTAS Y SUAURIOS --
select cue.numero_cuenta, cue.fecha_creacion, cue.saldo, usr.cedula from 
cuentas cue, usuario usr
where cue.cedula_propietario = usr.cedula
	and (cue.saldo > money(100) and cue.saldo < money(1000))
	and (cue.fecha_creacion between '2022/09/21' and '2023/09/21');