# !/ bin / bash 
#test si le nombre d'arguments est entre 1 et 4 case 
if [ $# -gt 0 ] && [ $# -lt 5 ];then 
case "$1" in   
-BEAMER ) echo "Erreur: le premier argument doit etre le nom du projet voir initdev -help pour plus d'informations sur l'application " ;;
-Latex) echo "Erreur: le premier argument doit etre le nom du projet voir initdev -help pour plus d'informations sur l'application " ;;
echo "Erreur: le premier argument doit etre le nom du projet voir initdev -help pour plus d'informations sur l'application " ;;
-Py) echo "Erreur: le premier argument doit etre le nom du projet voir initdev -help pour plus d'informations sur l'application " ;;
-C++) echo "Erreur: le premier argument doit etre le nom du projet voir initdev -help pour plus d'informations sur l'application " ;;
-Cp) echo "Erreur: le premier argument doit etre le nom du projet voir initdev -help pour plus d'informations sur l'application " ;;
-c) echo "Erreur: le premier argument doit etre le nom du projet voir initdev -help pour plus d'informations sur l'application " ;;
-git) echo "Erreur: le premier argument doit etre le nom du projet voir initdev -help pour plus d'informations sur l'application " ;;
-MIT) echo "Erreur: le premier argument doit etre le nom du projet voir initdev -help pour plus d'informations sur l'application " ;;
-GPL) echo "Erreur: le premier argument doit etre le nom du projet voir initdev -help pour plus d'informations sur l'application " ;;
esac
else
#si le nombre d'arguments=0 ,
if [ $# -eq 0 ];then   
	echo "Expected arguments, please check the help : initdev –help"
#si le nombre d'arguments =1 
	elif [ $# -eq 1 ];then   
	
	
# ajout de la commande -help -Name -Syntax -args -author
case "$1" in 	        
-help)
		echo "Arguments:" ;
		echo "-Name : Afficher le nom de l’application et une petite description."
		echo "-Syntax : Afficher la syntaxe d’utilisation de la commande initdev."
		echo "-args : Lister les arguments et donner une description de chaque argument."
		echo "-author : Afficher le nom et l’email de l’auteur de l’application."
;;
-Name) 		
		echo " initdev: organisation de son projet et appliquer un ensemble de pré-configurations comme : l’initialisation d’un dépôt
git, l’ajout d’un fichier .gitignore, la désignation d’une licence, la création d’un premier fichier source dans le
dossier du projet avec un code minimal selon le type du projet (C, Latex, python ou autre), etc. ";
;; 
-Syntax) 
		echo "Syntaxes d'utilisations: "
		echo " commande initdev : -help , -Name , -Syntax , -args , -author ] "
		echo " syntaxe: initdev [nom], [nom/langage/licence],[nom/licence/langage],[nom/langage/licence/git],[nom/licence/langage/git]" 					echo "attenstion:le nom du projet doit etre mis comme 1er argument dans toute les syntaxes
 la création d’un dépôt git sans préciser le langage du projet,erreur "
-args)
;; 
		echo "Arguments : 

-help		affiche l'aide
-Name		affiche le nom de l'application 
-Syntax		affiche les syntaxes d'utilisation de la commande
-args		affiche tous les arguments possible pour l'application
-author		affiche le nom et l'e-mail de l'auteur de l'application
-C		Projet en langage C
-Py		Projet en langage Python
-Cpp ou -C++	Projet en langage C++ 
-Latex		Projet de rédaction en Latex
-BEAMER		Projet de rédaction en BEAMER
-GPL		Projet avec une licence GENERAL PUBLIC LICENSE
-MIT		Projet avec une licence MIT
-git		ajoute un fichier .gitignore et un depot git dans le repertoire du projet" 
;;
-author) 
		echo "Auteur: LARKAT HOUSSAMEDDINE "
		echo "E-mail: lerkathoussam@gmail.com"
esac  
		else
# Creation d'un projet 1 argument [nom-prijet] 
		mkdir "$1"
		touch "$1"/main
		touch "$1"/LICENSE  
		touch "$1"/makefile 
		fi
	else
#le nombre d'arguments=2 /Creation d'un projet avec langage (c,py,c++,latex,BEAMER) ou avec un licence  
	if [ $# -eq 2 ];then
case   "$2"  in 
-C) 
			mkdir "$1" ;
			cp  home/"$USER"/.initdev/sources/main.c "$1"/ 
			touch "$1"/LICENSE 
			touch "$1"/Makefile 
;;
-CPP) 
				mkdir "$1" ;
				cp home/"$USER"/.initdev/sources/main.cpp "$1"/ 
				touch "$1"/LICENSE 
				touch "$1"/Makefile 
;;
-c++)
mkdir "$1" ;
				cp home/"$USER"/.initdev/sources/main.cpp "$1"/ 
				touch "$1"/LICENSE 
				touch "$1"/Makefile
;;
-Py)
				mkdir "$1" ;
				cp /home/"$USER"/.initdev/sources/main.py "$1"/ 
				touch "$1"/LICENSE 
				touch "$1"/Makefile 
;;
-Latex)
				mkdir "$1" ;
				cp /home/"$USER"/.initdev/sources/latexMin.tex "$1"/
				mv "$1"/latexMin.tex "$1"/Main.tex
				touch "$1"/LICENSE 
				touch "$1"/Makefile 
;;
-BEAMER)
				mkdir "$1" ;
				cp /home/"$USER"/.initdev/sources/beamer.tex "$1"/
				mv "$1"/beamer.tex "$1"/Main.tex
				touch "$1"/LICENSE 
				touch "$1"/Makefile
;; 
-GPL)
				mkdir "$1" ; 
				touch "$1"/main ;
				cp /home/"$USER"/.initdev/licenses/GPL "$1"/
				mv "$1"/GPL "$1"/LICENSE
				touch "$1"/Makefile 
;;
-MIT)
				mkdir "$1" ; 
				touch "$1"/main ;
				cp /home/"$USER"/.initdev/licenses/MIT "$1"/
				mv "$1"/MIT "$1"/LICENSE
				touch "$1"/Makefile 
;;
*) echo "erreur voir -help" 
;;	
esac  
#test si le nombre d'arguments est égal à 3 , le but des commandes suivantes c'est de ré-arranger les arguments pour ne pas trops saturer le script ,on garde toujours le même ordre nom > langage >licence/-git  dans l'algorithme sans qu'on oblige l'utilisateur a respecter l'ordre , arg2: represente le langage , arg3: la licence ou -git			
		elif [ $# -eq 3 ];then 
		ar2="$2"
		ar3="$3"
case "$2" 
$3 )
					echo " repetitions d'arguments interdits "
;;
-GPL) ar2="$3"  ar3="$2"
;;
-MIT ) ar2="$3"  ar3="$2"
;;
-git ) ar2="$3"  ar3="$2"
;;
-C )  ar2="$3"  ar3="$2"
;;
-Cpp) ar2="$3"  ar3="$2"
;;
-C++) ar2="$3"  ar3="$2"
;;
-Py ) ar2="$3"  ar3="$2"
;;
-Latex) ar2="$3"  ar3="$2"
:: 
-BEAMER) ar2="$3"  ar3="$2"   
*) echo "erreur voir initdev -help plus d'information"					
esac  
				mkdir "$1" ; 
case  "$ar2" in 
-C) 				
cp  /home/"$USER"/.initdev/sources/main.c "$1"/ 
;;
-Cpp) 
cp /home/"$USER"/.initdev/sources/main.cpp "$1"/
;;
-C++) cp /home/"$USER"/.initdev/sources/main.cpp "$1"/
;;
-Py)
cp /home/"$USER"/.initdev/sources/main.py "$1"/
;;
-Latex)						
cp /home/"$USER"/.initdev/sources/latexMin.tex "$1"/
mv "$1"/latexMin.tex "$1"/Main.tex
;;
-BEAMER)
						
cp /home/"$USER"/.initdev/sources/beamer.tex "$1"/
mv "$1"/beamer.tex "$1"/Main.tex
;;
*)
echo "You must set project type, please check the help : initdev -help"
;;					
esac 
case "$ar3" in 
-GPL)
					cp /home/"$USER"/.initdev/licenses/GPL "$1"/
					mv "$1"/GPL "$1"/LICENSE
					touch "$1"/Makefile 
;;
-MIT)
						cp /home/"$USER"/.initdev/licenses/MIT "$1"/
						mv "$1"/MIT "$1"/LICENSE
						touch "$1"/Makefile 
;;
-git)

						
						if [ "$ar2" = "-C" ];then
							cd "$1"/
							git init
							cd ../
							touch "$1"/LICENSE
							touch "$1"/makefile
							cp /home/"$USER"/.initdev/gitignores/c "$1"/
							mv "$1"/c "$1"/.gitignores
							elif [ "$ar2" = "-Cpp" ] || [ "$ar2" = "-C++" ];then
								cd "$1"/
								git init
								cd ../
								touch "$1"/LICENSE
								touch "$1"/makefile
								cp /home/"$USER"/.initdev/gitignores/"cpp" "$1"/
								mv "$1"/"cpp" "$1"/.gitignore
							elif [ "$ar2" = "-Py" ];then
								cd "$1"/
								git init
								cd ../
								touch "$1"/LICENSE
								touch "$1"/makefile
								cp /home/"$USER"/.initdev/gitignores/python "$1"/
								mv "$1"/python "$1"/.gitignore
							elif [ "$ar2" = "-Latex" ] || [ "$ar2" = "-BEAMER" ];then
								cd "$1"/
								git init
								cd ../
								touch "$1"/LICENSE
								touch "$1"/makefile
								cp /home/"$USER"/.initdev/gitignores/tex "$1"/
								mv "$1"/tex "$1"/.gitignore
						
						fi
;;
*)
echo "Uknown arguments, please check the help : initdev –help" ;
;;
						
esac 
#test si le nombre d'arguments est égal à 4 , on garde toujours le meme ordre nom > langage >licence >-git dans l'algorithme sans qu'on oblige l'utilisateur a respecter l'ordre ,ar2: represente le langage , ar3: la licence , ar4: -git
		elif [ $# -eq 4 ] ; then 
		ar2="$2"
		ar3="$3"
		ar4="$4"
		if [ "$2" = "$3" ] || [ "$2" = "$4" ] || [ "$4" = "$3" ];then
			    echo " repetitions d'arguments interdits "
			else
case "$2" in 
-GPL) ar3="$2"
;;
-MIT) ar3="$2"
;;
-git) ar4="$2"
;;			
esac
case "$3" in 
-C) ar2="$3"
;; 
-Cpp) ar2="$3"
;;
-C++) ar2="$3"
;;
-Py) ar2="$3"
;;
-Latex) ar2="$3"
;;
-BEAMER) ar2="$3"
;;
-git)	ar4="$3"		
esac 
case "$4" in 
-C) ar2="$4"
;;
-Cpp) ar2="$4"
;;
-C++) ar2="$4"
;;
-Py)  ar2="$4"
;;
-Latex) ar2="$4"
;;
-BEAMER) ar2="$4"
;;
-GPL) ar3="$4"
;;		
-MIT) ar3="$4"
;;
esac 		
		
		mkdir "$1" ;
case	"$ar2"	in 
-C)
				
			cp  /home/"$USER"/.initdev/sources/main.c "$1"/ 
			elif [ "$ar2" = "-Cpp" ] || [ "$ar2" = "-C++" ];then
			cp /home/"$USER"/.initdev/sources/main.cpp "$1"/
			elif [ "$ar2" = "-Py" ];then
			cp /home/"$USER"/.initdev/sources/main.py "$1"/
;;
-Latex) 
						
			cp /home/"$USER"/.initdev/sources/latexMin.tex "$1"/
			mv "$1"/latexMin.tex "$1"/Main.tex
;;
-BEAMER)
						
			cp /home/"$USER"/.initdev/sources/beamer.tex "$1"/
			mv "$1"/beamer.tex "$1"/Main.tex
;;
*)
			echo "You must set project type, please check the help : initdev -help";
esac			
case "$ar3" in 
-GPL)			
				cp /home/"$USER"/.initdev/licenses/GPL "$1"/
				mv "$1"/GPL "$1"/LICENSE
				touch "$1"/Makefile
;;
-MIT)
					cp /home/"$USER"/.initdev/licenses/MIT "$1"/
					mv "$1"/MIT "$1"/LICENSE
					touch "$1"/Makefile ;
*)  
echo "unknown license type, project set to be without specified license ,check the help for more infos  : initdev -help" 
			if [ "$ar4" = "-git" ] ;then

					case "$ar2" in 
	-C)
							cd "$1"/
							git init
							cd ../
							touch "$1"/LICENSE
							touch "$1"/makefile
							cp /home/"$USER"/.initdev/gitignores/c "$1"/
							mv "$1"/c "$1"/.gitignores
;;
	-Cpp) 
								cd "$1"/
								git init
								cd ../
								touch "$1"/LICENSE
								touch "$1"/makefile
								cp /home/"$USER"/.initdev/gitignores/"cpp" "$1"/
								mv "$1"/"cpp" "$1"/.gitignore
;;
         -C++)
                                                                cd "$1"/
								git init
								cd ../
								touch "$1"/LICENSE
								touch "$1"/makefile
								cp /home/"$USER"/.initdev/gitignores/"cpp" "$1"/
								mv "$1"/"cpp" "$1"/.gitignore
;;
	  -Py)
								cd "$1"/
								git init
								cd ../
								touch "$1"/LICENSE
								touch "$1"/makefile
								cp /home/"$USER"/.initdev/gitignores/python "$1"/
								mv "$1"/python "$1"/.gitignore
;;
	  -Latex)                                               cd "$1"/
								git init
								cd ../
								touch "$1"/LICENSE
								touch "$1"/makefile
								cp /home/"$USER"/.initdev/gitignores/tex "$1"/
								mv "$1"/tex "$1"/.gitignore
;;
          -BEAMER)
								cd "$1"/
								git init
								cd ../
								touch "$1"/LICENSE
								touch "$1"/makefile
								cp /home/"$USER"/.initdev/gitignores/tex "$1"/
								mv "$1"/tex "$1"/.gitignore
;;
						
					
	   *)
;;						echo "Uknown arguments, please check the help : initdev –help" ;
esac 
						if [ -d $1 ]; then
							rm -r $1
						fi
					
		else 
		echo "Beaucoup d'arguments ! ";
				fi fi
		
		fi 
else 

echo "trops d'arguments en entré , maximum 4 voir: initdev -help ou initdev -syntax"
fi
if [ $# -gt 1 ];then
if [ "$1" = "-help" ] || [ "$1" = "-Name" ] || [ "$1" = "-args" ] || [ "$1" = "-author" ] || [ "$1" = "-Syntax" ];then
echo "beaucoups trops d'arguments ou arguments inconnus , voir initdev -help , initdev -args ou initdev -Syntax" 
fi
fi			
			
	
 
