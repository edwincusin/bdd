--CONSULTA PRODUCTOS QUE INICIEN CON Q --
select * from productos
where nombre like 'Q%';

--CONSULTA PRODUCTOS CON DESCRIPCION NULL--
select * from productos 
where descripcion is null;

--CONSULTA PRODUCTOS CON PRECIO ENTRE 2 Y 3--
select * from productos 
where precio 
between money(2) and money(3);