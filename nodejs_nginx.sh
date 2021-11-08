node -v
https://nodejs.org/download/release/  --> all version node

### node version manager
https://github.com/coreybutler/nvm-windows/releases  
https://github.com/coreybutler/nvm-windows/releases/download/1.1.8/nvm-setup.zip
nvm install [version]        # Download and install [version]
nvm uninstall [version]      # Uninstall [version]
nvm use [version]            # Switch to use [version]
nvm list                     # List installed versions

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
