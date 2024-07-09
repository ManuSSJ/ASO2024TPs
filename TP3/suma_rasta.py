import time

start_time = time.time()
total = 0
for i in range(1000000):
    total += i
end_time = time.time()
print(f"Tiempo de ejecución suma_rasta: {end_time - start_time} segundos")

# Descomentar las líneas 11, 12, 19 y 20 para la segunda parte
# start_time = time.time()
# total = 0
# for i in range(1000000):
#     total += i
# end_time = time.time()
# print(f"Tiempo de ejecución suma_rasta con líneas descomentadas: {end_time - start_time} segundos")
