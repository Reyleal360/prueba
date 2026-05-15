sql 


USE tienda;
 
 select nombre as cliente ,sum(total) as total_gastado, count(*) as pedidos_realizados from clientes join pedidos
 on clientes.id = pedidos.cliente_id
 where total > 100
 group by nombre
 ;
