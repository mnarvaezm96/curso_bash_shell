# !/bin/bash}
#
# Agumentos identificadores
# $0 el nombre del script
# $1 al ${10} el numero de argumento, si son de un digito se utiliza las llaves
# $# contador de argumentos
# $* Refiere a todos los argumentos

nombreCurso=$1
horarioCurso=$2

echo "el nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso "
echo "El numero de parametros enviamos es: $# "
echo "Los parametros enviados son: $*"
