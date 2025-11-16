--CREAR TABLA TRANSACIONES CON SU PK --
create table transacciones(
	codigo int,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date,
	hora time,

	constraint transacciones_pk primary key (codigo)
);

--CREAR TABLA BANCO--
create table banco (
	codigo_banco int,
	codigo_transaccion int,
	detalle varchar(100),

	constraint banco_pk primary key (codigo_banco),

	constraint banco_codigo_transaccion_fk 
	foreign key (codigo_transaccion)
	references transacciones(codigo)
);

--INSERT TABLE TRANSACCIONES
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
	values(1, '11111', 20.00, 'D', '20/01/2025', '15:20:32'),
			(2, '22222', 30.00, 'C', '20/02/2025', '08:20:32'),
			(3, '22001', 10.00, 'C', '20/03/2025', '10:20:32'),
			(4, '22004', 200.00, 'D', '20/04/2025', '11:20:32'),
			(5, '22005', 40.00, 'C', '20/05/2025', '12:20:32'),
			(6, '22066', 50.00, 'C', '20/06/2025', '13:20:32'),
			(7, '77777', 80.00, 'D', '20/07/2025', '14:20:32'),
			(8, '88888', 30.00, 'C', '20/08/2025', '15:20:32'),
			(9, '99999', 100.00, 'D', '20/09/2025', '16:20:32'),
			(10, '00022', 120.00, 'D', '20/10/2025', '16:20:32');


--INSERT TABLA DE BANCO -- 
insert into banco(codigo_banco, codigo_transaccion, detalle)
values (1,3,'TRANS1'),
		(2,4,'TRANS12'),
		(3,5,'TRANS13'),
		(4,8,'TRANS14'),
		(5,9,'TRANS15'),
		(6,10,'TRANS16'),
		(7,1,'TRANS17'),
		(8,7,'TRANS18'),
		(9,8,'TRANS19'),
		(10,2,'TRANS10');
		

select * from transacciones;
select * from banco;
