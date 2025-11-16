-- CREAR TABLA VIDEOJUEGOS CON SU PK
create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,

	constraint videojuegos_pk primary key (codigo)
);


--CREAR TABLA PLATAFORMAS CON SU:
--PK ID PLATAFORMA
--FK CODIGO_VIDEOJUEGO
create table plataformas(
	id_plataforma int ,
	nombre_plataforma varchar (50) not null,
	codigo_videojuego int,

	constraint plataformas_pk primary key (id_plataforma),

	constraint plataformas_codigo_videojuego_fk
	foreign key (codigo_videojuego)
	references videojuegos(codigo)
);

--INSERT TABLA VIDEO JUEGOS
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values (1,'SAN ANDRES','AVENTURA ACCION',6),
		(2,'GOD OF WAR','GUERRA',7),
		(3,'SILENT HILL','TERROR',10),
		(4,'CYBERPUNK 2077','AVENTURA ACCION GUERRA',9),
		(5,'COUNTER-STRIKE2','AVENTURA ACCION',6),
		(6,'DOTA','ACCION',10),
		(7,'MUERTOS VIVIENTES','TERROR',10),
		(8,'NEED FORD SPEED','CARRERAS',8),
		(9,'STAR WAR','GUERRA ',7),
		(10,'FORZA HORIZON 5','AUTOS CARRERAS',8);
		


--INSERT TABLA PLATAFORMAS
insert into plataformas(id_plataforma, nombre_plataforma,codigo_videojuego)
values (1,'NINTENTO',2),
		(2,'GOG.COM',1),
		(3,'XBOX',3),
		(4,'AMAZON GAMES',4),
		(5,'ROCKSTAR GAMES',1),
		(6,'STEAM',8),
		(7,'PLAY STATION',8),
		(8,'EA.APP',3),
		(9,'EPIC GAMES STORE',9),
		(10,'KIK',2);
		
		


select * from videojuegos;
select * from plataformas;





DROP TABLE PLATAFORMAS, VIDEOJUEGOS;


