systemctl list-unit-files --type=service
systemctl list-unit-files --type=service | grep enabled

systemctl disable /enable / start <nombre_del_servicio>



/etc/security/limits.conf > user hard nproc 300
ulimit -a           # lista info (max user processes)


kill -9  numero_process        #kill  matar processi
pkill -f nome_ruta_file         #killar processo en base la ruta del file

killall -e COMMAND
killall -KILL -u user  #uscide procesos del usuario


java -jar file.jar
nohup java -jar file.jar > /dev/null &



#Administración de software UBUNTU
nano /etc/apt/sources.list  #servidores para bajar paquetes
apt-get update, upgrade     #Descarga nuevas listas de paquetes #Realiza una actualización
apt-cache search paquete
apt-get install, remove, purge: paquete

apt-get install aptitude
aptitude update
aptitude --help
aptitude search, install:  paquete
aptitude install build-essential libssl-dev
aptitude install  nginx  mongodb  php7.2-cli mysql-server php7.2-fpm  php7.2-mysql

man aptitude

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.profile
nvm ls-remote
nvm install 6.11.2
nvm ls
nvm use 6.11.2



#administracion de procesos
service nginx: status, stop, start, reload
service php7.2-fpm restart
