# SASS
npm install -g less

gem install sass
gem install bourbon

sass   file.sass    file.css
sass   file.sass    file.css --no-cache
sass   file.sass    file.css --no-cache -t compact
sass   file.sass    file.css --no-cache -t compressed
sass   file.sass    file.css --no-cache -t expanded

sass --watch cli.sass  //escucha el file
sass --watch source:css //escucha la carpeta
sass --watch anidado.sass:styles/main.css



#Installing Ionic
npm install -g ionic cordova
ionic start myApp
ionic login
ionic serve
ionic link     #Connect your local app to Ionic
ionic upload   #Sube la aplicación ionic view
ionic docs
ionic info

