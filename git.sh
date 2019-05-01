#!/usr/bin/env bash
git --version
man git		#manual de git
git --help comando  #ver ayuda de comandos

 init    #iniciar repositorio git
 clone https://github.com/atientas/bootstrap.git  #copia archivos de remoto
 config -l			#mostrar configuracion de git
 config g --global user.name "jorge"
 config g --global user.email "nombre@dominio.com"

#Git add and commit in one command
 config --global alias.addcommit '!git add -A && git commit'
 add-commit -m 'My commit message'

 branch --all            #listar ramas
 branch -a
 branch ramanueva		#crear rama nueva
 checkout -b ramanueva	#crear rama nueva
 checkout ramanueva		#cambiar de rama
 branch -d ramanueva		#eliminar rama en local
 merge otrarama		    #unir rama corrente con otrarama

 status		#stado del repositorio
 log --all
 log         #listar de comit
 log --stat
 show commit-id --stat
 diff        #ver diferenciasgit
 add .     	#preparar archivos para commit
 commit -m "mensaje"
 commit -am "mensaje"
 commit --amend -m "renombrar commit anterior"

 tag -a v1.0.0 -m "Version 1 lista para produccion"
 push --tags


 fetch       #revisar si hay cambios
 fetch --all
 remote -v			#direccion del repositorio
 remote add origin   https://repo.git  #agregar repositorio remoto
 remote set-url origin git://new.url.here
 remote remove origin
 remote show
 push origin --all   #subir todas las ramas
 push origin develop #subir de local a remoto
 push origin :dev  	#eliminar rama en remoto
 push origin <branch_name> --force
 pull origin develop #descargar de remoto a local
 pull --all


 pull --rebase origin develop
 rebase master       #unir rama develop con master
 rebase --continue
 rebase --skip
 rebase --abort


 reset --hard    #ripristina los cambios del momento
 reset --hard HEAD~1  #restore one commit
 reset --hard branch  #restore a branch
 reset --hard origin/develop #restore a branchRemoto
 checkout HEAD -- myfile.txt     #Hard reset of a single file

 checkout 01     #va ala tag 01
 diff 01..02     #comparar archivos
 rm --cached  mylogfile.log
 rm --cached -r dir/      #Eliminar dir
 rm --cached -f src/app/services/UrlApi.ts

 rm archivo			#borrar un archivo
 mv a.txt b.txt    	#cambiar nombre
 mv index.html app/   #mover archivo
 mv styles/ app/      #mover carpeta


# crear gh-pages en github
git branch gh-pages
git checkout -b "gh-pages"
git push -u origin gh-pages
http(s)://<username>.github.io/<projectname>