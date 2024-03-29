### UTENTI E GRUPPI
/etc/passwd       #List All Users
awk -F':' '{ print $1}' /etc/passwd     #List All Users
/etc/shells       #list shell disponibile per user
/etc/shadow       #password degli utenti
/etc/group        #list grups

sudo su #pasar a root
sudo su –    # permessi root
su user #cambia user
whoami #nombre usuario

id  #info usuario

apt-get update
apt-get install adduser
nano /root/.bashrc                 # agrega la siguiente para modificar el PATH de Manera permanente
export PATH=$PATH:/usr/sbin:/sbin  # ejecuta para modificar el PATH de manera temporal
source /root/.bashrc               # Para que los cambios tengan efecto inmediatamente
useradd name_user -d /home/name_user -s /bin/bash -G name_gruppo -g gruppo_default # Crea user con Directorio Home, Shell, y Grupos Especificados
useradd user_nologin -M -s /bin/nologin -G name_gruppo -g gruppo_default   ## Crea user sin Directorio, con Acceso de No-Login para cuentas de servicio o procesos, no para una sesión interactiva.

## USER y GRUPOS
adduser name_user               # create user
useradd -m name_user            # create user
usermod -aG sudo name_user      # add user to group admin
usermod -g name_user grupo      # change group a user
usermod -aG name_grupo $USER    # add user to group 
sudo gpasswd -d nome_utente nome_gruppo  #remove user to group
sudo deluser nome_utente nome_gruppo     #remove user to group
userdel name_user -r            # delete user
passwd name_user  tu_pass       # change pasword

groups # grupos del usuario
groups name_user
groupadd name_group 
groupdel name_group
groupmod name_group -g 1002
chgrp  #cambia il gruppo di un file/cartella


## GENERATE KEY SSH
cd ~/.ssh          # machina local WIN o MAC
ssh-keygen -y -f privata.pem > chiave.pub  ## generare chiave publica da chiave privata
ssh-keygen -t rsa -b 4096 -f name_key ## generar llaves publica y privada con nome custom
ssh-keygen -t rsa -b 4096  ## genera chiavi publica(id_rsa.pub) e privata(id_rsa) C:\Users\nome_utente\.ssh
  
ssh-copy-id -p port  name_user@IP_REMOTO    #copy key id_rsa.pub in server  /home/name_user/.ssh/authorized_keys
ssh-copy-id -i name_key.pub utente@IP_REMOTO

# caricare manualmente chiave publica
scp chiave.pub ssh old_user@IP_REMOTO:/home/old_user
mkdir /home/name_user/.ssh
cat chiave.pub >> /home/name_user/.ssh/authorized_keys
chown name_user:name_user authorized_keys

ssh name_user@IP_REMOTO -p port              # conect tramite ssh

curl ifconfig.me    # obtener la IP pública

sudo nano /etc/ssh/sshd_config --> PasswordAuthentication no
sudo service ssh restart



### PERMESSI FILE E CARTELLE
chown user:grupo /dir        # Cambia el propietario y grupo de /dir
chown -R user:grupo /dir     # Cambio recursivo de propietario y grupo en /dir

# user - group - others
drw - r - r    # lectura, escritura - leer - leer      --> dir
r - w - x       # leer - scribir - ejecutar    -->file
r - w - x       # listar - modificar - acceder    -->dir

chmod -R 777 /dir          # Establece permisos de lectura, escritura y ejecución para todos los usuarios, recursivamente en /dir
chmod +r archivo           # Agrega permisos de lectura al archivo para todos los usuarios
chmod -r archivo           # Quita permisos de lectura del archivo para todos los usuarios
chmod u-r archivo          # Quita permisos de lectura del archivo solo para el propietario
chmod o-x archivo          # Quita permisos de ejecución del archivo solo para otros usuarios
chmod u-r,g+x archivo      # Quita permisos de lectura al propietario y agrega permisos de ejecución al grupo
chmod u=w,o=wx archivo     # Establece los permisos del propietario a solo escritura y de otros a escribir y ejecutar

lettura = 4
scrittura = 2
esecuzione = 1

chmod 744 archivo    # Propietario: todo; Grupo y Otros: solo lectura.
chmod 755 directorio # Propietario: todo; Grupo y Otros: leer y ejecutar.
chmod 600 archivo    # Propietario: leer y escribir; Grupo y Otros: ningún permiso.
chmod 666 archivo    # Todos: leer y escribir; nadie puede ejecutar.
chmod 775 directorio # Propietario y Grupo: todo; Otros: leer y ejecutar.
chmod 700 archivo    # Propietario: todo; Grupo y Otros: ningún permiso.
chmod 570 directorio # Propietario: leer y ejecutar; Grupo: todo; Otros: ningún permiso.
chmod 640 archivo    # Propietario: leer y escribir; Grupo: solo lectura; Otros: ningún permiso.
chmod 710 directorio # Propietario: todo; Grupo: ningún permiso; Otros: solo ejecutar.
chmod 764 archivo    # Propietario: todo; Grupo: leer y escribir; Otros: solo lectura.







