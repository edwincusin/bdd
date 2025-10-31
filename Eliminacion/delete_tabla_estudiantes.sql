--ELIMINA TODOS LOS ESTUDAINTES QUE TENGAN CEDULA QUE TEMINA POR 05--
delete from estudiantes
where cedula like '%05';

select * from estudiantes; 