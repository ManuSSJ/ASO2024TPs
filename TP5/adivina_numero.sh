#!/bin/bash

numero_aleatorio=$(( RANDOM % 100 + 1 ))
intento=0

echo "Adivina el número (entre 1 y 100):"

while [ $intento -ne $numero_aleatorio ]; do
  read -p "Ingresa tu intento: " intento
  if [ $intento -lt $numero_aleatorio ]; then
    echo "Demasiado bajo!"
  elif [ $intento -gt $numero_aleatorio ]; then
    echo "Demasiado alto!"
  else
    echo "Felicidades, has adivinado el número!"
  fi
done

