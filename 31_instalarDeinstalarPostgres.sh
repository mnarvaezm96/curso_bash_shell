# !/bin/bash
#  Programa que permite manejar las utilidades de postgres - Menu de opciones 
# Autor: teo :v
#
opcion=0

## funcion para instalar postgres
instalar_postgres () {
    echo -e "\n verificar instalacion de postgres ..."
    verifyInstall=$(which psql)
    if [ $? -eq 0 ]; then
        echo -e "\n Postgres a se encuentra instalado en el equipo"
    else
        read -s -p "Ingresar contraseña de sudo" password
        read -s -p "Ingresar contraseña a utilizar en postgres" passPostgres
        echo "$password" | sudo -S dnf update -y
        echo "$password" | sudo -S dnf install postgresql -y
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$passPostgres}';"
        echo "password" | sudo -S systemctl enable postgresql
        echo "password" | sudo -S systemctl start postgresql
    fi
    read -n1 -s -r -p "PRESIONE [ENTER] para continuar"
}

## funcion para desintalar postgres
desinstalar_postgres () {
    read -s -p "Ingresar contraseña de sudo" password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql
    echo "$password" | sudo -S dnf remove -y postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql 
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel postgres
    echo "$password" | sudo -S groupdel postgresql
    
    read -n1 -s -r -p "PRESIONE [ENTER] para continuar"
}


# funcion para sacar un respaldo
sacar_respaldo () {
    echo "sacando respaldo..."
    echo "Directorio backup: $1"
}

# funcion para restaurar un respaldo
restaurar_respaldo () {
    echo "restaurando resplado..."
    echo "directorio respaldo: $1"
}
 
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
            instalar_postgres
            sleep 3
            ;;
        2) 
            desinstalar_postgres
            sleep 3
            ;;
        3) 
            read -p "Directorio Backup: " dirbk
            sacar_respaldo $dirbk
            sleep 3
            ;;
        4) 
            read -p  "\nDirectorio de respaldos" dirres
            restaurar_respaldo $dirres
            sleep 3
            ;;
        5) echo "\nSaliste del programa..."
           exit 0
           ;;
esac
done
