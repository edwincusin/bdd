select vj.nombre, vj.descripcion, vj.valoracion, pl.nombre_plataforma
from videojuegos vj, plataformas pl
where vj.codigo = pl.codigo_videojuego
and (vj.descripcion ilike '%guerra%')
and (((vj.valoracion > 7) OR (vj.nombre ilike 'C%'))
and ((vj.valoracion > 8) OR (vj.nombre ilike 'D%')))



select pl.*
from videojuegos vj, plataformas pl
where vj.codigo = pl.codigo_videojuego
and (vj.descripcion ilike '%guerra%')
and ((vj.valoracion > 7) OR (vj.nombre ilike 'C%'))
and pl.codigo_videojuego = (select codigo from videojuegos where nombre ='GOD OF WAR');


SELECT * FROM videojuegos 
SELECT * FROM plataformas
