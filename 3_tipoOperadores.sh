# !/bin/bash
# Programa para revisar los tipos de operadores

numA=10
numB=4

echo "Operadores aritmeticos"
echo "Numeros: A =$numA y B=$numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "dividir A - B =" $((numA / numB))
echo "residuo A % B =" $((numA % numB))

echo -e "\nOperadores relacionales"
echo "Numeros: A=$numA y B=$numB"
echo " A > B =" $((numA > numB))
echo "A < B=" $((numA < numB))
echo " A >= B =" $((numA >= numB))
echo "A <= B=" $((numA <= numB))
echo " A == B =" $((numA == numB))
echo "A != B=" $((numA != numB))

echo -e "\nOperadores de asignacion"
echo "Numeros: A=$numA y B=$numB"
echo "Sumar A += B" $((numA += numB))
echo "Restar A -= B" $((numA -= numB))
echo "Multiplicar A *= B" $((numA *= numB))
echo "Dividir A /= B" $((numA /= numB))
echo "residuo A %= B" $((numA %= numB))
