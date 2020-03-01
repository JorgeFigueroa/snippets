##### GRUNT BOWER
npm install -g grunt cli
npm install grunt --save-dev
npm install grunt-contrib-uglify --save-dev
grunt watch, serve

#bower
npm install -g bower
bower install, list
bower install --save angular-ui-sortable jquery-ui angular-bootstrap


#### yeoman
ruby -v compass -v  node -v # si da problemas reinstalar npm
npm install -g yo generator-karma generator-angular
yo angular proyecto_yeoman
yo angular:route articulos


# SCSS
https://www.codementor.io/@ricardozea/sass-for-beginners-the-friendliest-guide-about-installing-and-using-sass-on-windows-cjfs2id3o
http://rubyinstaller.org/downloads/
gem install compass
gem install sass
gem install susy
ruby -v compass -v sass -v
compass create my-project
compass watch
compass clean
compass compile --output-style compressed --force
compass compile --output-style expanded --force

# NODE-SASS
npm install -g node-sass
node-sass -w sass_folder -o css_folder 

npm install -g less

# SASS 
sass   file.sass    file.css
sass   file.sass    file.css --no-cache
sass   file.sass    file.css --no-cache -t compact
sass   file.sass    file.css --no-cache -t compressed
sass   file.sass    file.css --no-cache -t expanded

sass --watch file.sass  #escucha el file
sass --watch source:css #escucha la carpeta
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

