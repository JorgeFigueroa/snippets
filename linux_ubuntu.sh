#Administración de software
nano /etc/apt/sources.list  #servidores para bajar paquetes
apt-get update      #Descarga nuevas listas de paquetes
apt-get upgrade     #Realiza una actualización
apt-cache search paquete
apt-get install paquete
apt-get remove paquete
aptitude search paquete
apt-get purge vlc


apt-get install aptitude
aptitude update
aptitude --help
man aptitude

aptitude search git
aptitude install git

aptitude install build-essential libssl-dev
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.profile
nvm ls-remote
nvm install 6.11.2
nvm install 10.4.1
nvm ls
nvm use 6.11.2

aptitude install   nginx  mongodb  php7.2-cli mysql-server php7.2-fpm  php7.2-mysql


#administracion de procesos
service nginx status, stop, start, reload
service php7.2-fpm restart
