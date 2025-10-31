--ELIMINAR REGISTROS DEL MES DE JUNIO--
delete from registro_entrada 
where fecha 
between '01/06/2025' and '30/06/2025';


select * from registro_entrada;