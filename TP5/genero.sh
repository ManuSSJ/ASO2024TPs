#!/bin/bash

echo "Ingresa un nombre:"
read nombre

url="https://api.genderize.io/?name=$nombre"
curl -s "$url" | jq '. | {name, gender}'
