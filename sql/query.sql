-- Consulta: Obtener los 5 clientes que más han gastado en los últimos 3 meses, 
-- incluyendo el total gastado y la cantidad de pedidos realizados.

SELECT 
    c.nombre AS Cliente,
    COUNT(p.id) AS TotalPedidos,
    SUM(p.total) AS TotalGastado
FROM 
    Clientes c
JOIN 
    Pedidos p ON c.id = p.cliente_id
WHERE 
    p.fecha_pedido >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
GROUP BY 
    c.id, c.nombre
HAVING 
    TotalGastado > 0
ORDER BY 
    TotalGastado DESC
LIMIT 5;

/* 
Ejemplo del resultado esperado:
+-------------------+--------------+---------------+
| Cliente           | TotalPedidos | TotalGastado  |
+-------------------+--------------+---------------+
| Juan Perez        | 4            | 1250.50       |
| Maria Garcia      | 3            | 980.00        |
| Carlos Rodriguez  | 5            | 850.25        |
| Ana Martinez      | 2            | 620.00        |
| Laura Lopez       | 2            | 540.75        |
+-------------------+--------------+---------------+
*/
