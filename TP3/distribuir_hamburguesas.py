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
