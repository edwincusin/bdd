
--crear tabla transacciones --
create table transacciones (
	codigo int not null, 
	numero_cuenta char(5) not null,
	monto mo,
	tipo,
	fecha,
	hora,

	constraint transacciones_pk primary key(codigo)
)