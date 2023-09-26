# !/bin/bash
#  Programa que permite manejar las utilidades de postgres - Menu de opciones 
# Autor: teo :v
#
opcion=0

# 
# se hace un while infinito con el while :
while : 
do
    clear
    # Desplegar el menu de opciones
    echo "-------------------------------------------"
    echo "PGUTIL - Programa de utilidades de Postgres"
    echo "-------------------------------------------"
    echo "              Menu Principal               "
    echo "-------------------------------------------"
    echo "1. instalar postgres"
    echo "2. desinstalar postgres"
    echo "3. sacar un respaldo"
    echo "4 Restar respaldo"
    echo "5. salir"

    # leer los datos del usuario - capturar informacion
    read -n1 -p "Ingrese una opcion [1-5]: " opcion

    #Validar la opcion ingresada
    case $opcion in
        1)
            echo -e " <\nInstalar postgres...."
            sleep 3
            ;;
        2) echo "\nDesintalando potgres.."
            sleep 3
            ;;
        3) echo "\nSacando respaldo..."
            sleep 3
            ;;
        4) echo "\nRestaurando resplado.."
            sleep 3
            ;;
        5) echo "\nSaliste del programa..."
           exit 0
           ;;
esac
done
