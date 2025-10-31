--1
select * from videojuegos
where nombre ilike '%c%'
	or valoracion = 7;

--2
select * from videojuegos 
where codigo 
	between 3 and 7
	or valoracion = 7;

--3
select * from videojuegos
where (descripcion ilike '%GUERRA%'
	and valoracion > 7 
	and nombre ilike 'C%')
	or (valoracion > 8 
	and nombre ilike 'D%');