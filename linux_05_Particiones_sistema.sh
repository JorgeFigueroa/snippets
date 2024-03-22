## INFO LINUX 
cat /etc/os-release  #SO
uname -a             #SO
lscpu    #CPU
free -h  #RAM
df -h    #DISK
lsblk    #PARTITION


which dmesg
man dmesg
dmesg	 # print or control the kernel ring buffer

man fdisk
sudo fdisk -l  # manipulate disk partition table


### Montare un device
lsblk -a  #lista dispositivia blocchi
mount /dev/sr0 /path/destinazione  #Montare il lettore cd virtuale
umount /dev/sr0  #Smontare il lettore cd virtuale
/etc/fstab  #lista dei dispositivi da montare al boot

### liberar spazio en disco
which df
man df
df -h	# report file system disk space usage
du -h --max-depth=1 | sort -hr #tamano de la cartella dove ti trovi
du -hs ./* | sort -hr   # verifica cuanto spacio ocupa los directorios ordenados por tamano
du -hs /var/*

lsof +L1  #mostra file che sono stati cancellati ma sono ancora tenuti aperti da processi

ls -ltr --block-size=M
ls -lh  #show their sizes in human-readable format (MB)

apt-get clean
apt-get auto-clean
apt-get auto-remove
apt-get purge

##procesador y la RAM
top             # procesos
top 1	                #mostrar procesos
ps -fe | grep res     #filtar processi
ps -A | wc -l         #contar procesos
ps fax                #ver procesos

htop            #processos modo amigable
free -h         #cantidad total de RAM libre y usada en el sistema 
kill -9 PID     #matar proceso
kill -9  numero_process        #kill  matar processi
pkill -f nome_ruta_file         #killar processo en base la ruta del file
killall -e COMMAND
killall -KILL -u user  #uscide procesos del usuario

#LIBERAR MEMORIA RAM
watch -n 1 free -m
sudo sync && sudo sysctl -w vm.drop_caches=3




