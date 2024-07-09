import time

start_time = time.time()
# Simulando una tarea sin hilos
for i in range(1000000):
    pass
end_time = time.time()
print(f"Tiempo de ejecución sin hilos: {end_time - start_time} segundos")
