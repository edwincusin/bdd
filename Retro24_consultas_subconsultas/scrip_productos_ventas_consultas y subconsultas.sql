--obtener el nombre, stcok y cantidad de productos y ventas cuyo nombre contiene la letra m o la descripcion sea igual a 0
select pro.nombre, pro.stock, vent.cantidad 
from productos pro, ventas vent
where pro.codigo = vent.codigo_producto
and ((pro.nombre ilike '%m%')or (pro.descripcion = '0'));




--obtener el nombre y stok de los productos dondel codigo se prodcuto de las ventas correcponde a una cantidad de 5
select pro.nombre, pro.stock
from productos pro, ventas vent
where pro.codigo = vent.codigo_producto
and ((pro.nombre ilike '%m%')or (pro.descripcion = '0'))
and vent.cantidad =5;




select *from productos pro
select *from ventas