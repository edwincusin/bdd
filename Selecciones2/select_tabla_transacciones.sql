--1
select * from transacciones 
where tipo ='C' 
	and numero_cuenta
		between '22001' and '22004';

--2
select * from transacciones
where tipo = 'D'
	and EXTRACT(month from fecha) = 5
	and EXTRACT(day from fecha)=25
	and numero_cuenta
		between '22002' and '22010';
	

--3
select * from transacciones 
where (codigo between 1 and 9 )
	and (numero_cuenta='22002' or numero_cuenta='22004')
	and (EXTRACT(month from fecha) =5 and (EXTRACT(day from fecha)=26 or EXTRACT(day from fecha)=29));
	