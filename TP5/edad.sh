#!/bin/bash

read -p "Ingrese su año de nacimiento: " anio_nacimiento
anio_actual=$(date +%Y)
edad=$((anio_actual - anio_nacimiento))

echo "Su edad es: $edad años"
