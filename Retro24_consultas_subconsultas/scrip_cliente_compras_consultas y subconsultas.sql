--OBETENER NOMBRE Y APELLIDO DE LOS CLIENTES QUE CONTENGAN NUMERO 7 EN LA CEDULA
select cl.nombre, cl.apellido from clientes cl
where cl.cedula like '%7%';

--OBETENER NOMBRE Y APELLIDO DE LOS CLIENTES QUE CONTENGAN NUMERO 7 EN LA CEDULA
select * from clientes cl
where cl.nombre ilike '%monica%';