# Guia de Preparacin: SQL

Este mdulo cubre los fundamentos de diseo de bases de datos y consultas eficientes.

## Modelo de Datos (Tienda)
El esquema incluye:
- **Clientes**: Datos de contacto.
- **Categorias**: Clasificacin de productos.
- **Productos**: Detalles del inventario.
- **Pedidos**: Cabecera de transaccin (quin y cunto).
- **DetallesPedido**: Lnea por lnea de lo que se compr.

## Consultas Clave
La consulta en `query.sql` utiliza:
1. **JOINs**: Para relacionar tablas.
2. **Funciones de Agregacin**: `SUM()` y `COUNT()`.
3. **Filtros de Fecha**: `DATE_SUB()` para periodos de tiempo.
4. **GROUP BY / HAVING**: Para agrupar por cliente y filtrar resultados agregados.

## Eficiencia
- Siempre usa ndices en columnas de bsqueda (`id`, `cliente_id`).
- Evita `SELECT *`, especifica solo las columnas necesarias.
- Filtra antes de agrupar (`WHERE`) para reducir el set de datos.
