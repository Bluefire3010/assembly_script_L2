#!/usr/bin/env bash 

if (($#!=1)) 
then
    echo "Mets un nom de fichier assembleur imbécile !"
else
    check_extension=$(echo $1 | grep -c ".s")
    #on check si le fichier n'est pas vide et est bien un .s
    if [[ -f $1 ]] && [[ $check_extension == 1 ]]
    then
       nom_fich_o=$(echo ${1/.s/.o})
       as -a --gstabs $1 -o $nom_fich_o
       nom_fich_comp=$(echo ${nom_fich_o/.o/ })
       ld $nom_fich_o -o $nom_fich_comp
       #on check si ddd est déjà lancé, si c'est le cas on le tue 
       check_ddd=$(ps -s | grep ddd* | grep -v color)
       if [[ -n $check_ddd ]]
       then
            pid=$(echo $check_ddd | cut -d ' ' -f2)
            kill -15 $pid
       fi;
       ddd $nom_fich_comp &
    else
        echo "Fichier inexistant ou du mauvais format."
    fi;
fi;

