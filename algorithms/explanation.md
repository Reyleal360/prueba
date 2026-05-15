# Guia de Preparacin: Algoritmia

El problema "Two Sum" es un clsico para evaluar el manejo de estructuras de datos y optimizacin.

## Lgica Utilizada
1. **Fuerza Bruta (O(n²))**: Usar dos bucles anidados para probar cada par. Ineficiente para arrays grandes.
2. **Optimizacin con HashMap (O(n))**:
   - Recorremos el array una sola vez.
   - Calculamos el `complemento` (target - valor actual).
   - Verificamos si ese complemento ya fue visto guardado en un Mapa.
   - Si existe, retornamos los ndices.
   - Si no, guardamos el valor actual y su ndice para futuras comparaciones.

## Complejidad
- **Temporal**: O(n) porque recorremos el array una vez. Las operaciones en el Mapa son O(1).
- **Espacial**: O(n) en el peor caso, si guardamos todos los elementos en el Mapa.
