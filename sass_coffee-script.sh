npm install -g less

gem install sass
gem install bourbon


sass cli.sass cli.css
sass cli.sass cli.css --no-cache
sass cli.sass cli.css --no-cache -t compact
sass cli.sass cli.css --no-cache -t compressed
sass cli.sass cli.css --no-cache -t expanded

sass --watch cli.sass  //escucha el file
sass --watch source:css //escucha la carpeta
sass --watch anidado.sass:styles/main.css





#### coffee-script
npm install -g coffee-script

coffee -c first.coffee
