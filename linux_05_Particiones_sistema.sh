
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
du -hs  #Spazio occupato della cartella
du -h --max-depth=1 | sort -hr
du -h /var/cache/apt/archives/
ls -ltr --block-size=M
ls -lh  #show their sizes in human-readable format (MB)

apt-get clean
apt-get auto-clean
apt-get auto-remove
apt-get purge



#LIBERAR MEMORIA RAM
watch -n 1 free -m
sudo sync && sudo sysctl -w vm.drop_caches=3




