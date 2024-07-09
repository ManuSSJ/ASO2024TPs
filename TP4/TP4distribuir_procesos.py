
import threading
import time

def tarea():
    print(f"Proceso iniciado por {threading.current_thread().name}")
    time.sleep(2)
    print(f"Proceso finalizado por {threading.current_thread().name}")

hilos = []
for i in range(5):  # Crear 5 hilos
    hilo = threading.Thread(target=tarea, name=f"Hilo-{i+1}")
    hilos.append(hilo)
    hilo.start()

for hilo in hilos:
    hilo.join()

print("Todos los procesos han finalizado.")
