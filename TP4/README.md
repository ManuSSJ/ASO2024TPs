# Observaciones del TP N°4

## Configuración y uso de servicios en Ubuntu WSL

### Parte 1: Configuración y uso de nginx
Instalamos nginx y verificamos que está funcionando correctamente accediendo a `http://localhost:80`:

![nginx funcionando]

### Parte 2: Configuración y uso de phpMyAdmin
Instalamos phpMyAdmin y configuramos nginx para que sirva phpMyAdmin. Accedemos a `http://localhost/phpmyadmin`:

![phpMyAdmin funcionando]

## Ejercicio 2: Distribuir procesos usando hilos en Python

### Código del script `distribuir_procesos.py`:

```python
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

