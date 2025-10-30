--ACTUALIZAR STOCK 0 A TODOS LOS QUE ESTAN EN NULL-- 
update productos set stock=0
where descripcion is null; 


select * from productos;