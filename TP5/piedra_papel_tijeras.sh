#!/bin/bash

opciones=("piedra" "papel" "tijeras")
computadora=${opciones[$RANDOM % 3]}

echo "Elige una opción: piedra, papel o tijeras"
read usuario

echo "Computadora eligió: $computadora"

if [ "$usuario" == "$computadora" ]; then
  echo "Es un empate!"
elif [ "$usuario" == "piedra" ] && [ "$computadora" == "tijeras" ] || [ "$usuario" == "papel" ] && [ "$computadora" == "piedra" ] || [ "$usuario" == "tijeras" ] && [ "$computadora" == "papel" ]; then
  echo "Ganaste!"
else
  echo "Perdiste!"
fi
