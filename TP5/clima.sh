#!/bin/bash

api_key=3e9134627038444ca6330601240907
echo "Ingresa el nombre de la ciudad:"
read ciudad

url="http://api.weatherapi.com/v1/current.json?key=$api_key&q=$ciudad"
curl -s "$url" | jq '.current | {temp_c, condition: .condition.text}'
