/**
 * Problema: Two Sum (Suma de Dos)
 * 
 * Dado un array de nmeros enteros 'nums' y un entero 'target', 
 * retorna los ndices de los dos nmeros tales que sumen el 'target'.
 * 
 * Complejidad Temporal: O(n) - Solo recorremos el array una vez.
 * Complejidad Espacial: O(n) - Usamos un mapa para almacenar los valores vistos.
 */

function twoSum(nums, target) {
    // Usamos un Map para guardar: valor -> ndice
    const map = new Map();

    for (let i = 0; i < nums.length; i++) {
        const complemento = target - nums[i];

        // Si el complemento ya est en el mapa, hemos encontrado la pareja
        if (map.has(complemento)) {
            return [map.get(complemento), i];
        }

        // Si no, guardamos el nmero actual y su ndice
        map.set(nums[i], i);
    }

    return null; // No se encontr solucin
}

// Ejemplo de uso:
const nums = [2, 7, 11, 15];
const target = 9;
const resultado = twoSum(nums, target);

console.log(`Indices: [${resultado}]`); // Esperado: [0, 1]
console.log(`Valores: ${nums[resultado[0]]} + ${nums[resultado[1]]} = ${target}`);

module.exports = { twoSum };
