# Quoi de neuf

Mais comme j'ai aussi souhaité me frotter à un autre utilitaire de génération automatique dénommé CMAKE (pour mémoire CMAKE génère automatiquement des fichiers Makefile qu'il faut donc ensuite lancer en mode classique), j'ai aussi créé l'ensemble des fichiers de paramétrages utiles a TOUTES les générations.

Et bien entendu, il reste quelques difficultés/bugs avec CMAKE, que j'ai résolu par l'utilisation de fichiers Makefile en mode natif pour chaque environnement de développement non traité correctement par CMAKE (.ie. Borland C/C++, Digital Mars C/C++, LCC32, LCC64, Pelles C 32 bits, Pelles C 64 bits, Open Watcom C/C++ 32 bits, Open Watcom C/C++ 64 bits) en présence de fichier Ressource : (\*.rc).

Et enfin, connaissant de mieux en mieux les syntaxes permettant de générer une suite logique de compilations (compil only) puis d'éditions de liens finales (linkage) , j'ai rajouté une dernière possibilité de génération en mode "ligne de commandes" Windows (.ie. autant de fichier de commandes que d'environnements);

En résumé, trois possibilités de génération de TOUS les exécutables :

&nbsp; &nbsp; a) un premier sur lequel je me suis "fait les dents" en programmation : l'IDE Code::Blocks (20.03 + Nightly Build 2022)

b) un deuxième avec l'utilitaire CMAKE (+ des fichiers Makefile pour les environnements pas ou mal gérés par CMAKE)

c) un dernier qui correspond au mode le plus "basique" : TOUTES les générations en mode ligne de commandes (.ie. des fichiers d'extensions \*.bat) qu'il faut utiliser avec l'utilitaire de scripts CMD.


***
_Créé avec HelpNDoc Personal Edition: [Sites web iPhone faciles](<https://www.helpndoc.com/fr/tour-des-fonctionnalites/generation-de-site-web-iphone>)_
