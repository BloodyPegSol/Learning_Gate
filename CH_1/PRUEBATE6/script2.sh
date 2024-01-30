#!/bin/bash

PATRON=$1

if [[ $# != 1 ]]
then
	echo "Uso: $0 patrón"
fi


function busqueda {

	#grep regresa el valor 1 (booleano true) cuando no encuentra
	#matches al patr'on y 0 (booleano false) en caso de que s'i. 
	#Por ende, se debe invertir el condicional mediante !
	
	if ! ls | grep -n $1     
	then
		echo "No existe archivo que contenga el patr'on"

	fi

}

busqueda $PATRON
