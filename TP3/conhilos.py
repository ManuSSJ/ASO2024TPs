import threading
import time

def some_function():
    # Simulando una tarea
    for i in range(1000000):
        pass

threads = []
start_time = time.time()
for i in range(10):  # 10 hilos
    thread = threading.Thread(target=some_function)
    thread.start()
    threads.append(thread)
for thread in threads:
    thread.join()
end_time = time.time()
print(f"Tiempo de ejecución con hilos: {end_time - start_time} segundos")
