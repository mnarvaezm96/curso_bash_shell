# ! /bin/bash
# Programa para ejemplificar el uso de los arreglos
# Autor: Teo :v
#
arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
arregloRangos=({A..Z} {10..20})

# Imprimir todos los valores
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Arreglo de cadenas: ${arregloCadenas[*]}"
echo "Arreglo de rangos: ${arregloRangos[*]}"


# Imprimir todos los valores
echo " Tamaño arreglo de numeros: ${#arregloNumeros[*]}"
echo "Tamaño arreglo de cadena : ${#arregloCadenas[*]}"
echo " Tamaño arreglo de rangos : ${#arregloRangos[*]}"

# Imprimir la posicion 3 del arreglo de numeros, cadenas de rango
echo " Posicion 3 arreglo de numeros: ${arregloNumeros[3]}"
echo "Posicion 3  arreglo de cadena: ${arregloCadenas[3]}"
echo " Posicion 3  arreglo de rango: ${arregloRangos[3]}"

# Añadir y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Tamaño arreglo de numeros: ${#arregloNumeros[*]}"
