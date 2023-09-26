# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion for loop
# Autor: Teo :v
#
arregloNumeros=(1 2 3 4 5 6)

echo "Iterar in la lista de numeros"
for num in ${arregloNumeros[*]}
do
    echo "Numero: $num"
done

echo "Iterar en la lista de cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombres: $nom"
done

echo "Iterar en archivos"
for fil in *
do
    echo "Nombre archivo: $fil"
done

echo "Iterar utilizando un comando"
for comand in $(ls)
do
    echo "Nombre comando: $comand"
done

echo "Iterar en base al formato tradicional"
for ((i=1; i<10; i++))
do
    echo "Numero:$i"
done

