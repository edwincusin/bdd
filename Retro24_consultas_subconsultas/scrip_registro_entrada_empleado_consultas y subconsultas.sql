select re.cedula_empleado, re.fecha, em.nombre
from registros_entrada re, empleado em
where re.codigo_empleado = em.codigo_empleado
and((re.fecha
	between '2023/08/01' and '2023/08/31'
		or (re.cedula_empleado ilike '%17%' 
		and re.hora 
		between '08:00' and '12:00')
	)
		
or (re.fecha
	between '2023/10/06' and '2023/10/20'
		and re.cedula_empleado ilike '%08%' 
		and re.hora 
		between '09:00' and '13:00'
	)
)

---------------------------------------------------------------------------

select em.*
from registros_entrada re, empleado em
where re.codigo_empleado = em.codigo_empleado
and((re.fecha
	between '2023/08/01' and '2023/08/31'
		or (re.cedula_empleado ilike '%17%' 
		and re.hora 
		between '08:00' and '12:00')
	)
		
or (re.fecha
	between '2023/10/06' and '2023/10/20'
		and re.cedula_empleado ilike '%08%' 
		and re.hora 
		between '09:00' and '13:00'
	)
)
and re.codigo_empleado = (select codigo_empleado from empleado where codigo_empleado='2201')



select * from empleado