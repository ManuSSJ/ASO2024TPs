#!/bin/bash

start=0
end=0
elapsed=0

echo "Presiona 's' para iniciar, 'e' para detener, y 'r' para reiniciar el cronómetro."

while true; do
  read -n 1 input

  if [ "$input" == "s" ]; then
    start=$(date +%s)
    echo "Cronómetro iniciado..."
  elif [ "$input" == "e" ]; then
    end=$(date +%s)
    elapsed=$(( end - start ))
    echo "Tiempo transcurrido: $elapsed segundos"
  elif [ "$input" == "r" ]; then
    start=0
    end=0
    elapsed=0
    echo "Cronómetro reiniciado."
  else
    echo "Comando no válido."
  fi
done
