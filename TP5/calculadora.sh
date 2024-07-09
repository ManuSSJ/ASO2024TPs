#!/bin/bash

echo "Ingresa el primer número:"
read num1
echo "Ingresa el segundo número:"
read num2
echo "Elige una operación (+, -, *, /):"
read operacion

case $operacion in
  +) resultado=$((num1 + num2)) ;;
  -) resultado=$((num1 - num2)) ;;
  \*) resultado=$((num1 * num2)) ;;
  /) resultado=$((num1 / num2)) ;;
  *) echo "Operación no válida" && exit 1 ;;
esac

echo "El resultado es: $resultado"
