-- RELACION CLIENTES COMPRAS 
--funcion agregacion1
SELECT comp.cedula, SUM(cast(comp.monto AS NUMERIC)) AS monto_total_compras
FROM compras comp
GROUP BY comp.cedula




--funcion agregacion2
SELECT fecha_compra, COUNT(fecha_compra)
FROM compras 
WHERE fecha_compra = '2025-10-12'
GROUP BY  fecha_compra







select * from clientes
select * from compras