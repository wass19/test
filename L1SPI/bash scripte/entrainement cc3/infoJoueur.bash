#!/bin/bash
if (test $# -ne 2) then 
	echo "pas content, il faut deux paramètres"
	exit
fi

resultat=`grep -i  "$2 $1" fich_test_sed`  
 
if (test -z "$resultat") then 
	echo "La personne n'existe pas dans ce fichier" 
else
	l=`grep -i  "$2 $1" fich_test_sed | cut -d":" -f6`  
	a=`grep -i  "$2 $1" fich_test_sed | cut -d":" -f4`
	c=`grep -i  "$2 $1" fich_test_sed | cut -d":" -f2`
	r=`grep -i  "$2 $1" fich_test_sed | cut -d":" -f3`	
	g=`grep -i  "$2 $1" fich_test_sed | cut -d":" -f5`
	
	echo "joueur $1 $2 "
	
	if (test $g == F) then
		echo "Genre                = feminin"
	else 
        	echo "Genre                = Masculin"
	fi
	echo "Classement           = $c "
	echo "Rang                 = $r "
	echo "Numero d'association = $a "
	echo "Numero de licence    = $l "
fi