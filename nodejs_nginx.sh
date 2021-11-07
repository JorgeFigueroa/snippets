node -v
https://github.com/coreybutler/nvm-windows/releases  --> nvm-setup.zip
nvm list
nvm use version.node
nvm install version.node


#Configuramos el servidor para Node.js
npm install -g nodemon
nodemon server.js

brew install nginx
nginx -v    
nginx -h   #help
sudo nginx
sudo nginx -s stop

/usr/local/etc/nginx/nginx.conf #Configurar la ruta del servidor para Node.js

#Crear un sitio web básico con Nginx y Node.js
proxy_set_header Host $hots;
proxy_set_header X-Real-IP $remote_addr;
proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
proxy_set_header X-Nginx-Proxy true;

proxy_pass http://localhost:3000/:
proxy_redirect off;


brew install mongodb
mongo --version
mkdir data/db
mongod
