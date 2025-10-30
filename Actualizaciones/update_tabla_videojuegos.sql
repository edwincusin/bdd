--ACTUALIZAR DESCRIPCION 'MEJOR PUNTUADO' CUYA VALORACION SEA MAYOR 9--
update videojuegos set descripcion ='MEJOR PUNTUADO'
where valoracion > 9;


select * from videojuegos;