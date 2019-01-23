#Configuramos el servidor para Node.js
npm install -g nodemon
nodemon server.js

brew install nginx
nginx -v    
nginx -h   //help
sudo nginx
sudo nginx -s stop

#Configurar la ruta del servidor para Node.js
/usr/local/etc/nginx/nginx.conf

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
