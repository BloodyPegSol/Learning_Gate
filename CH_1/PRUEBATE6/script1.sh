#!/bin/bash


#Los argumentos deben ser añadidos a variables globales 
#para que la función tenga acceso a estas.
ARCHIVO=$1
PATRON=$2


#Se revisa que se añadan 2 argumentos solamente
if [[ $# != 2 ]] 
then
	echo "Uso: $0 nombre_archivo patrón"
	exit -1
fi

#Funci'on que lleva a cabo la acci'on requerida
#mediante pipes. 
function listado {

	ls | grep $PATRON > "$ARCHIVO"

}

listado
