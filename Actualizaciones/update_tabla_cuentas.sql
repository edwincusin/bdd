--ACTUALIZAR SALDO A 10 $ CUYA CEDULA PROPIETARIO INICIE POR 17--
update cuentas set saldo = 10
where cedula_propietario like '17%';



select * from cuentas;