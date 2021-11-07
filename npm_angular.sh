npm install -g @angular/cli
npm i -g @angular/cli@1.7.4

ng --version
ng new my-app
ng serve –open

ng g c --help  #ayuda
ng g c pages/namecomponent # -is  // no css   --flat  // no carpeta    --spec=false  // no .spec
ng g c home -it    #  no .html
ng g s services/usuario 
ng g g  guards/auth   # crea guards
ng g m folder/nome_modulo –flat     # crea modulo
