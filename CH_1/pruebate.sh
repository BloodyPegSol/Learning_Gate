#!/bin/bash

NUM=$1
RESIDUO=$(( NUM%3 ))

if [[ $RESIDUO -eq 0 ]]
then 
	echo "El entero $NUM es múltiplo de 3"
else
	echo "El entero $NUM no es múltiplo de 3"
fi	 

