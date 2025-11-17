--RELACION CUENTAS CON USUARIO--
--funcion de agregracion1
SELECT AVG(cast(cue.saldo as numeric)) AS promedio_saldo
FROM cuentas cue
WHERE cue.cedula_propietario = '1753081053'


--funcion de agregracion2
SELECT usr.tipo_cuenta, COUNT(*)
FROM usuario usr
GROUP BY tipo_cuenta


--select * from cuentas 
--select * from usuario 


