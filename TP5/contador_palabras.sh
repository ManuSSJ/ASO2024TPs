#!/bin/bash

echo "Ingresa el nombre del archivo:"
read archivo

if [ -f "$archivo" ]; then
  lineas=$(wc -l < "$archivo")
  palabras=$(wc -w < "$archivo")
  caracteres=$(wc -m < "$archivo")

  echo "Líneas: $lineas"
  echo "Palabras: $palabras"
  echo "Caracteres: $caracteres"
else
  echo "El archivo no existe."
fi
