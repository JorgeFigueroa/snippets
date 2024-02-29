

### UTENTI E GRUPPI PERMESSI
/etc/passwd       #List All Users
awk -F':' '{ print $1}' /etc/passwd     #List All Users
/etc/shells       #list shell disponibile per user
/etc/shadow       #password degli utenti
/etc/group        #list grups

sudo su #pasar a root
sudo su –    # permessi root
su user #cambia user
whoami #nombre usuario
groups # grupos del usuario
id  #info usuario

apt-get update
apt-get install adduser
nano /root/.bashrc                 # agrega la siguiente para modificar el PATH de Manera permanente
export PATH=$PATH:/usr/sbin:/sbin  # ejecuta para modificar el PATH de manera temporal
source /root/.bashrc              #Para que los cambios tengan efecto inmediatamente
useradd name_user -d /home/name_user -s /bin/bash -G name_gruppo -g gruppo_default # Crea user con Directorio Home, Shell, y Grupos Especificados
useradd user_nologin -M -s /bin/nologin -G name_gruppo -g gruppo_default   ## Crea user sin Directorio, con Acceso de No-Login para cuentas de servicio o procesos, no para una sesión interactiva.

adduser name_user               # create user
useradd -m name_user            # create user
usermod -aG sudo name_user      # add user to group admin
usermod -g name_user grupo      # change group a user
usermod -aG name_grupo $USER    # add user to group 
sudo gpasswd -d nome_utente nome_gruppo  #remove user to group
sudo deluser nome_utente nome_gruppo     #remove user to group
userdel name_user -r            # delete user
passwd name_user  tu_pass       # change pasword

## GENERATE KEY SSH
cd ~/.ssh          # machina local WIN o MAC
ssh-keygen -t rsa -b 4096 -f name_key ## generar llaves publica y privada con nome custom
ssh-keygen -t rsa -b 4096  ## genera chiavi publica e privata C:\Users\nome_utente\.ssh
  id_rsa
  id_rsa.pub
ssh-copy-id -p port  name_user@IP_REMOTO    #copy key id_rsa.pub in server  /home/name_user/.ssh/authorized_keys
ssh-copy-id -i name_key.pub utente@IP_REMOTO

ssh-keygen -y -f privata.pem > chiave.pub  ## generare chiave publica da chiave privata

# caricare manualmente chiave publica
scp chiave.pub ssh old_user@IP_REMOTO:/home/old_user
mkdir /home/name_user/.ssh
cat chiave.pub >> /home/name_user/.ssh/authorized_keys
chown name_user:name_user authorized_keys


ssh name_user@IP_REMOTO -p port              # conect tramite ssh

curl ifconfig.me    # obtener la IP pública

sudo nano /etc/ssh/sshd_config
  PasswordAuthentication no
sudo service ssh restart


groupadd name_group 
groupdel name_group
groupmod name_group -g 1002


### PERMESSI FILE E CARTELLE
groups #lista dei gruppi a cui appartiene l’utente
groups name_user
chmod  #modifca i permessi di un flee/cartella
chown  #modifca il proprietario di un flee/cartella
chgrp  #cambia il gruppo di un flee/cartella

lettura = 4
scrittura = 2
esecuzione = 1

chown user:grupo /dir #change dir de user
chown -R user:grupo /dir     #change privileg

drwx - r - r     # user - grupo - otrosUser
r - w - x   # leer - scribir - ejecutar    -->file
r - w - x   # listar - modificar - acceder    -->dir
chmod -R 777   #permisos ala carpeta
chmod +r file   #agregar permisos de lectura
chmod -r file   #quitar permisos de lectura
chmod u-r file  #quita permisos solo user
chmod o-x file  #quita permisos de execute solo otros
chmod u-r, g+x file #modificando permisos
chmod u=w, o=wx file  





