--sleccionar todos los productos con stock igual a 10 y precio menor a 10--
select * from productos 
where stock =10
	and precio < money(10);

--seleccionar los nombre y stock de todos los productos que tengan un m en el nombre o tenagasn un espacio en blanco en su descripcion--
select nombre, stock from productos 
where descripcion ilike '%m%'
	or descripcion like '% %';

--selecciona el nombre de todos los prodcutos que engan null en el campo descripcion o tengan un stock de 0--
select * from productos 
where descripcion is null
	or stock =0; 