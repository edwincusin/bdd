

--PARA EJECUTAR DESDE 0---
--drop table prestamos;
--drop table libros;
--drop table autores;
--drop table genero;



-- CREAR ENTIDAD TABLA AUTORES--
create table autores(
	id_autor serial not null,
	nombre varchar(25) not null,
	fecha_nacimiento date not null,
	nacionalidad varchar(25) not null,

	constraint autores_PK primary key (id_autor)
);


-- CREAR ENTIDAD TABLA GENERO--
create table genero(
	id_genero serial not null,
	nombre varchar(25) not null,

	constraint genero_PK primary key (id_genero)
);


--CREAR ENTIDAD TABLA LIBROS -----
create table libros (
	id_libro serial not null,
	titulo varchar(25) not null,
	autor_id int not null,
	genero_id int not null,
	anio_publicacion int not null,
	estado_disponibilidad boolean not null,

	constraint libros_PK primary key (id_libro),

	constraint autores_FK
	foreign key (autor_id)
	references autores(id_autor),

	constraint genero_FK
	foreign key (genero_id)
	references genero(id_genero)	
);

--CREAR ENTIDAD TABLA PRESTAMOS -----
create table prestamos(
	id_prestamo serial not null,
	libro_id int not null,
	usuario varchar(30) not null,
	fecha_prestamo date not null,
	fecha_devolucion date not null,

	constraint prestamos_PK primary key (id_prestamo),

	constraint libros_FK 
	foreign key (libro_id)
	references libros(id_libro)
);

----------------------INSERCIONES -----------------------------
insert into genero(nombre)
values('ROMATICO'),
		('CIENCIA FICCION'),
		('AVENTURAS'),
		('NOVELA HISTORICAS'),
		('FABULAS');
		

insert into autores(nombre, fecha_nacimiento,nacionalidad)
values ('JUAN LEON MERA','24/06/1925', 'ECUATORIANA'),
	('MIGUEL CERVANTES','24/06/1825', 'ESPAÑOL'),
	('HOMERO','01/02/1425', 'GRIEGO'),
	('WILIAM SHAKERPERS','03/09/1905', 'INGLATERRA'),
	('JORGE ORWELL','01/11/1835', 'REINO UNIDO');

insert into libros(titulo, autor_id, genero_id, anio_publicacion, estado_disponibilidad)
values ('LA ILIADA',3,1,1895,false), 
		('CUMANDA',1,2,1795,false), 
		('CENTRO DEL MUNDO',4,3,1885,true), 
		('ROSA GUADALUPE',5,4,1775,true), 
		('LA ODISEA',3,1,1895,false), 
		('EL LOBO Y EL CONEJO',4,5,1822,true), 
		('EL HOSPITAL VACIO',5,5,1833,true), 
		('LA LAGUNA AZUL',2,3,1844,true), 
		('EL PAYASO',1,1,1895,false), 
		('GUERRA SIN FIN',4,2,2000,false);

insert into prestamos(libro_id, usuario, fecha_prestamo, fecha_devolucion)
values (1,'EDWIN','15/10/2025','11/11/2025'),
		(2,'EUGENIA','15/09/2025','11/10/2025'),
		(3,'MARIA','15/08/2025','11/09/2025'),
		(3,'MARLON','15/07/2025','11/08/2025'),
		(2,'DANIEL','15/05/2025','11/06/2025'),
		(5,'LUISA','15/10/2025','11/11/2025'),
		(7,'ALVARO','15/11/2025','11/12/2025'),
		(9,'RAFAEL','15/04/2025','11/05/2025'),
		(2,'SIXTO','15/02/2025','11/03/2025'),
		(6,'ELOY','15/01/2025','11/02/2025');




select * from autores;
select * from genero;
select * from libros;
select * from prestamos;


select * from libros;



-- PRUBAS
SELECT id_prestamo, libro_id, usuario, fecha_prestamo, fecha_devolucion, libros.titulo as tituloLibro
FROM prestamos, libros, autores
WHERE prestamos.libro_id = libros.id_libro  and libros.autor_id=autores.id_autor
and libros.id_libro=2
order by prestamos.fecha_prestamo asc



SELECT id_prestamo, libro_id, usuario, fecha_prestamo, fecha_devolucion, libros.titulo as tituloLibro
					FROM prestamos, libros
					WHERE prestamos.libro_id = libros.id_libro
					and libros.id_libro>5

select fecha_prestamo from prestamos where fecha_prestamo between '01/01/2025' and '20/02/2025' 