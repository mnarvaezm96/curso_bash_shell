# !/bin/bash
# Programa para ejemplificar el uso de la setencia de decisión if, else
# Autor: teo :v

notaClase=0
edad=0

echo "Ejemplo Setencia IF -else"
read -n1 -p "Indique cual es su nota: " notaClase
echo -e "\n"
if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia"
else
    echo  "El alumno reprueba la materia"
fi

read -p " Indique cual es su edad: " edad
## la opcion -le es equivalente a menor o igual que
if [ $edad -le 18 ]; then
    echo "La persona no puede sugragar"
else
    echo "La persona puede sufragar"
fi
