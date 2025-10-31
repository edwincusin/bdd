--ELIMINA TODAS LAS CUENTAS CUYA CEDULA_PROPIETARIO EMPIECE POR 10--
delete from cuentas
where cedula_propietario like '10%';

select *from cuentas;