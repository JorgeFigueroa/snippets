
which dmesg
man dmesg
dmesg	 # print or control the kernel ring buffer

which df
man df
df -h	# report file system disk space usage

man fdisk
sudo fdisk -l  # manipulate disk partition table


### Montare un device
lsblk -a  #lista dispositivia blocchi
mount /dev/sr0 /path/destinazione  #Montare il lettore cd virtuale
umount /dev/sr0  #Smontare il lettore cd virtuale
/etc/fstab  #lista dei dispositivi da montare al boot
df -h   #Spazio libero sul sistema
du -hs  #Spazio occupato della cartella
ls -lh  #show their sizes in human-readable format (MB)


netstat -tnlp | grep :22222
netstat -tnlp | grep apache
netstat -na | grep 8080 | grep ESTABLISHED # view user conected
netstat -na | grep 443 | grep ESTABLISHED  # view user conected
