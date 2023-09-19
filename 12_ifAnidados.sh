# !/bin/bash
# Programa para ejemplificar el uso de if anidados
# Autor: teo :v

notaClase=0
continua=""
echo "Ejemplo Setencia IF -else"
read -n1 -p "Indique cual es su nota: " notaClase
echo -e "\n"
if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia"
    read -p "Si va a continuar estudiando en el siguiente nivel (s/n): " continua
    if [ $continua == "s" ]; then
        echo "Bienvenido al siguiente nuvel"
    else
        echo "Gracias por trabajar con nosotros"
    fi
else
    echo  "El alumno reprueba la materia"
fi

