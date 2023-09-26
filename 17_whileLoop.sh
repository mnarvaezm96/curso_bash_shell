# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion while loop
# Autor: Teo :v

numero=1

# opcion -ne es que no sea igual a 
while [ $numero -ne 15 ]
do
       echo "Imprimiendo $numero veces"
       numero=$(( numero + 1 ))
done
