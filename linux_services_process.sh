systemctl list-unit-files --type=service
systemctl list-unit-files --type=service | grep enabled

systemctl disable /enable / start <nombre_del_servicio>


/etc/security/limits.conf > user hard nproc 300
ulimit -a           # lista info (max user processes)



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
man aptitude



#administracion de procesos
service nginx: status, stop, start, reload
service php7.2-fpm restart
