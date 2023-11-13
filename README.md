# assembly_script_L2
Ce script bash permet d'exécuter les différentes commandes pour assembler et vérifier un code assembleur (valable pour la L2 Info de ST-Etienne).

Toute suggestion pour l'améliorer est la bienvenue.

Testé sous Ubuntu Budgie en 23.04.

Pour pouvoir utiliser ce script de n'importe où, il faut créer un lien symbolique et
donner son chemin à bash.

Je vous conseille donc de créer un dossier scripts, dans lequel vous placerez le fichier
ass.sh.

Ensuite, ajoutez la ligne suivante à la fin du fichier de configuration bash  :
export PATH=$PATH:le chemin vers votre dossier scripts

Déconnectez-vous de votre session, puis placez-vous dans votre dossier scripts.
Enfin, entrez la commande suivante : ln -s ass.sh ass

Vous pouvez à présent utiliser ce scipt de n'importe quel dossier en tapant ass fichier.sh s.

Ce projet est sous licence MIT.
