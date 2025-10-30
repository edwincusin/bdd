--SELECCIONAR TRANSACCIONES DE TIPO D--
select * from transacciones
where tipo = 'D';

--SELECCIONAR MONTOS ENTRE 200 Y 2000-- 
select * from transacciones 
where monto >= money(200) and monto <= money(2000);

--SELECCIONAR CODIGO, TIPO, FECHA TRANSACCIONES QUE TENGAN FECHA DIFERENTE NULL--
select codigo, monto, tipo, fecha from transacciones
where fecha is not null;