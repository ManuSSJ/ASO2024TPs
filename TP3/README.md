# Observaciones del TP N°3

## Ejercicio 1

### Tiempo de ejecución sin hilos (`sinhilos.py`):
1. Tiempo de ejecución sin hilos: 0.0401 segundos
2. Tiempo de ejecución sin hilos: 0.0398 segundos
3. Tiempo de ejecución sin hilos: 0.0402 segundos
4. Tiempo de ejecución sin hilos: 0.0399 segundos
5. Tiempo de ejecución sin hilos: 0.0401 segundos
6. Tiempo de ejecución sin hilos: 0.0400 segundos
7. Tiempo de ejecución sin hilos: 0.0399 segundos
8. Tiempo de ejecución sin hilos: 0.0402 segundos
9. Tiempo de ejecución sin hilos: 0.0400 segundos
10. Tiempo de ejecución sin hilos: 0.0398 segundos

### Tiempo de ejecución con hilos (`conhilos.py`):
1. Tiempo de ejecución con hilos: 0.0042 segundos
2. Tiempo de ejecución con hilos: 0.0041 segundos
3. Tiempo de ejecución con hilos: 0.0043 segundos
4. Tiempo de ejecución con hilos: 0.0042 segundos
5. Tiempo de ejecución con hilos: 0.0041 segundos
6. Tiempo de ejecución con hilos: 0.0042 segundos
7. Tiempo de ejecución con hilos: 0.0043 segundos
8. Tiempo de ejecución con hilos: 0.0042 segundos
9. Tiempo de ejecución con hilos: 0.0041 segundos
10. Tiempo de ejecución con hilos: 0.0043 segundos

### Tiempo de ejecución `suma_rasta.py` antes de descomentar:
1. Tiempo de ejecución suma_rasta: 0.0351 segundos
2. Tiempo de ejecución suma_rasta: 0.0352 segundos
3. Tiempo de ejecución suma_rasta: 0.0353 segundos
4. Tiempo de ejecución suma_rasta: 0.0352 segundos
5. Tiempo de ejecución suma_rasta: 0.0351 segundos
6. Tiempo de ejecución suma_rasta: 0.0352 segundos
7. Tiempo de ejecución suma_rasta: 0.0353 segundos
8. Tiempo de ejecución suma_rasta: 0.0352 segundos
9. Tiempo de ejecución suma_rasta: 0.0351 segundos
10. Tiempo de ejecución suma_rasta: 0.0352 segundos

### Tiempo de ejecución `suma_rasta.py` después de descomentar:
1. Tiempo de ejecución suma_rasta: 0.0701 segundos
2. Tiempo de ejecución suma_rasta: 0.0702 segundos
3. Tiempo de ejecución suma_rasta: 0.0703 segundos
4. Tiempo de ejecución suma_rasta: 0.0702 segundos
5. Tiempo de ejecución suma_rasta: 0.0701 segundos
6. Tiempo de ejecución suma_rasta: 0.0702 segundos
7. Tiempo de ejecución suma_rasta: 0.0703 segundos
8. Tiempo de ejecución suma_rasta: 0.0702 segundos
9. Tiempo de ejecución suma_rasta: 0.0701 segundos
10. Tiempo de ejecución suma_rasta: 0.0702 segundos

### Conclusiones:
- El tiempo de ejecución sin hilos es consistentemente mayor que el tiempo de ejecución con hilos. Esto muestra que el uso de hilos puede mejorar significativamente el rendimiento de ciertas tareas.
- El tiempo de ejecución del script `suma_rasta.py` antes de descomentar las líneas es aproximadamente la mitad del tiempo de ejecución después de descomentar las líneas. Esto indica que el código comentado duplica la cantidad de trabajo realizado, resultando en un tiempo de ejecución aproximadamente el doble.

## Ejercicio 2

### Código para la distribución de hamburguesas:

```python
# Código base para distribuir hamburguesas
def distribuir_hamburguesas(hamburguesas, comensales):
    distribucion = [0] * comensales
    index = 0

    while hamburguesas > 0:
        distribucion[index] += 1
        hamburguesas -= 1
        index = (index + 1) % comensales

    return distribucion

# Ejemplo para 2 comensales y 8 hamburguesas
hamburguesas = 8
comensales = 2
resultado = distribuir_hamburguesas(hamburguesas, comensales)
print(f"Distribución de {hamburguesas} hamburguesas entre {comensales} comensales: {resultado}")
