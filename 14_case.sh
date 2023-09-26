# !/bin/bash
# Programa para ejemplificar el uso de la setencia case
# Autor: teo :v

opcion=""

echo "Ejemplo Setencia case"
read -n1 -p "ingrese una opcion de la A - Z:  " opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperacion Guardar Archivo";;
    "B") echo "Operacion Eliminar Archivo";;
    [C-E]) echo "No está implementada la operacion";;
    "*") "Opcion incorrecta"
esac
