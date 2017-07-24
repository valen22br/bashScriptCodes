#!/bin/bash

indice=1
for i in `ls -lt1 *.PDF`
do
	echo $indice
	newName="${indice}_${i}"
	echo "mv $i $newName"
	mv $i $newName
	indice=$(($indice+1))
done
