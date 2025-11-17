-- RELACION TRANSACCIONES Y BANCO 
--funcion agregacion1
SELECT COUNT(*) AS total_transacciones_credito
FROM transacciones tr
WHERE tr.tipo = 'C'


--funcion agregacion2
SELECT tr.numero_cuenta, ROUND(
		AVG(
			CAST(tr.monto AS DECIMAL)
		),2
	) AS monto_promedio
FROM transacciones tr
GROUP BY tr.numero_cuenta




select * from transacciones
select * from 