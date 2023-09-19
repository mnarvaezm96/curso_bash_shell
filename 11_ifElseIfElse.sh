# !/bin/bash
# Programa para ejemplificar el uso de la setencia de decisión if, else if, else
# Autor: teo :v


edad=0

read -p " Indique cual es su edad: " edad
## la opcion -le es equivalente a menor o igual que
if [ $edad -le 18 ]; then
    echo "La persona es adolecente"
## La opcin -ge es equivalente a mayor o igual
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulta mayor"
fi
