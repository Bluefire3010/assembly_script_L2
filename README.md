# assembly_script_L2

Pour pouvoir utiliser ce script de n'importe où, il faut créer un lien symbolique et
donner son chemin à bash.

Je vous conseille donc de créer un dossier scripts, dans lequel vous placerez le fichier
ass.sh.

Ensuite, ajoutez la ligne suivante à la fin du fichier de configuration bash  :
export PATH=$PATH:le chemin vers votre dossier scripts

Déconnectez-vous de votre session, puis placez-vous dans votre dossier scripts.
Enfin, entrez la commande suivante : ln -s ass.sh ass

Vous pouvez à présent utiliser ce scipt de n'importe quel dossier en tapant ass fichier.sh.
