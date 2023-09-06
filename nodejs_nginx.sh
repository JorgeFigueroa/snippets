node -v
https://nodejs.org/download/release/  --> all version node

### node version manager win
https://github.com/coreybutler/nvm-windows/releases  
https://github.com/coreybutler/nvm-windows/releases/download/1.1.8/nvm-setup.zip

### node version manager osx. https://tecadmin.net/install-nvm-macos-with-homebrew/
brew update 
brew install nvm 
mkdir ~/.nvm 
nano ~/.bash_profile 
  export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh
source ~/.bash_profile

nvm install [version]        # Download and install [version]
nvm uninstall [version]      # Uninstall [version]
nvm use [version]            # Switch to use [version]
nvm list                     # List installed versions
nvm list available           # List all version 


curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.profile
nvm ls-remote
nvm ls



npm install -g n   # Install n globally
n 0.10.33          # Install and use v0.10.33
Usage:
n                            # Output versions installed
n latest                     # Install or activate the latest node release
n stable                     # Install or activate the latest stable node release
n <version>                  # Install node <version>
n use <version> [args ...]   # Execute node <version> with [args ...]
n bin <version>              # Output bin path for <version>
n rm <version ...>           # Remove the given version(s)
n --latest                   # Output the latest node version available
n --stable                   # Output the latest stable node version available
n ls                         # Output the versions of node available


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
