npm uninstall typescript
npm install -g typescript
tsc –v
tsc helloworld.ts


npm install -g @angular/cli
npm i -g @angular/cli@1.7.4

#Compatibility list for Angular/Angular-CLI and Node.js
https://gist.github.com/LayZeeDK/c822cc812f75bb07b7c55d07ba2719b3
https://www.redcricket.net/en/news-en/compatibility-list-for-angular-angular-cli-and-node-js/
https://nodejs.org/download/release/

ng --version
ng new my-app
ng serve –open

ng g c --help  #ayuda
ng g c pages/namecomponent # -is  // no css   --flat  // no carpeta    --spec=false  // no .spec
ng g c home -it    #  no .html
ng g s services/usuario 
ng g g  guards/auth   # crea guards
ng g m folder/nome_modulo –flat     # crea modulo
ng g m modules/general/canvas --routing  ## crea modulo con routing


#Disable CORS CHROME
"C:\Program Files\Google\Chrome\Application\chrome.exe" --disable-web-security --user-data-dir="C:/ChromeDevSession"


