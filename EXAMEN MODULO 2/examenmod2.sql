create table generos(
	id serial not null,
	nombre varchar(100) not null,
	constraint generos_pk primary key(id)
);

create table autores(
	id serial not null,
	nombre varchar(50) not null,
	fecha_nacimiento date not null,
	nacionalidad varchar(75) not null,
	constraint autores_pk primary key(id)
);

create table libros(
	id serial not null,
	titulo varchar(100) not null,
	id_autor int not null,
	id_genero int not null,
	anio_publicacion int not null,
	estado_disponible boolean not null,
	
	constraint libros_pk primary key(id),
	constraint autores_fk foreign key(id_autor) references autores(id),
	constraint generos_fk foreign key(id_genero) references generos(id)
);

create table prestamos(
	id serial not null,
	id_libro int not null,
	usuario varchar(100),
	fecha_prestamo date not null,
	fecha_devolucion date not null,
	constraint prestamos_pk primary key(id),
	constraint libros_prestamos_fk foreign key(id_libro) references libros(id)
);



insert into generos(nombre) values
('Accion'),
('Ciencia Ficcion'),
('Fantasia'),
('Literatura clasica'),
('Novela');

insert into autores(nombre, fecha_nacimiento, nacionalidad) 
values
('Gabriel Garcia Marquez', '1927-03-06', 'Colombiana'),
('Isabel Allende', '1942-08-02', 'Chilena'),
('Mario Vargas Llosa', '1936-03-28', 'Peruana'),
('Julio Cortazar', '1914-08-26', 'Argentina'),
('J.K. Rowling', '1965-07-31', 'Britanica');

insert into libros (titulo, id_autor, id_genero, anio_publicacion, estado_disponible) 
values
('Cien anos de soledad', 1, 5, 1967, false),
('El amor en los tiempos del colera', 1, 5, 1985, true),
('La casa de los espiritus', 2, 5, 1982, true),
('Paula', 2, 5, 1994, false),
('La ciudad y los perros', 3, 5, 1963, true),
('Conversacion en La Catedral', 3, 4, 1969, true),
('Rayuela', 4, 4, 1963, false),
('Bestiario', 4, 2, 1951, true),
('Harry Potter y la piedra filosofal', 5, 3, 1997, false),
('Harry Potter y la camara secreta', 5, 3, 1998, true);

insert into prestamos (id_libro, usuario, fecha_prestamo, fecha_devolucion) 
values
(1, 'Juan Perez', '2024-01-10', '2024-01-20'),
(4, 'Maria Lopez', '2024-01-12', '2024-01-22'),
(7, 'Carlos Andrade', '2024-01-15', '2024-01-25'),
(9, 'Ana Torres', '2024-01-18', '2024-01-28'),
(2, 'Luis Mendoza', '2024-02-01', '2024-02-10'),
(3, null, '2024-02-03', '2024-02-13'),
(5, 'Sofia Romero', '2024-02-05', '2024-02-15'),
(6, null, '2024-02-08', '2024-02-18'),
(8, 'Diego Castro', '2024-02-10', '2024-02-20'),
(10, 'Valentina Cruz', '2024-02-12', '2024-02-22');


select * from generos;
select * from autores;
select * from libros;
select * from prestamos;
