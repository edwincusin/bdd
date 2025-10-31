--1--
select nombre, apellido from estudiantes 
where nombre like 'M%'
	or apellido like '%Z';

--2--
select * from estudiantes 
where cedula like '%32%'
	and cedula like '18%';

--3--
select nombre||' '||apellido as "nombres completos" from estudiantes 
where cedula like '%06'
	or cedula like '17%';