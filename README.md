# Best practices pour travailler ensemble... TEST !

## On crée sa branche

* git checkout -b « ma-branche »
* Git push (on a un message d’erreur qui nous indique la bonne commande > on copie ce message)

C’est bon, on peut travailler en sérénité sur sa branche !

Une fois qu'on est content de notre boulot :

* git add [tous les dossiers modifiés]
* git commit -m « nouvelle modif sur ma-branche »
* Git push (pas besoin de préciser le nom de la branche, par défaut c’est la branche qui est poussée)

## Il est l'heure de merger sa branche

Vous êtes contents de votre boulot ? On merge avec sa branche, mais avant...

* On revient sur master : git checkout master
* On va chercher les dernières modifs faites sur master : git pull --prune (on élage les branches en local)
* On retourne sur notre branche : Git checkout -
* On merge master avec notre branche : git merge master
* On vérifie si tout va bien : Rail s > si tout marche, on revient sur master et on merge tout !
	* Git checkout master
	* Git merge -ma branche
	* Git push origin master 

A ce moment, si un message chelou s’affiche, keskonfé ???
* Appuyer "i"
* Ecrire le message de merge "Merge of master and ma-branche"
* Appuyer sur "esc"
* Ecrire ":wq"
* Appuyer sur enter
* branch -d ma-branche On supprime sa branche, c'est plus clean :)

