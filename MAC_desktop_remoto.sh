https://www.youtube.com/watch?v=PTFytIkW9CY
### BIOS ENABLED
Wake-on-LAN, Wake-up on LAN, PME Event Wake Up, Remote Wake Up, Wake up on PCI event


### ABILITARE ACCESO REMOTO CMD
netsh advfirewall firewall add rule name="TLI_Wake-on-LAN" dir=in action=allow profile=any localport=9 protocol=UDP edge=yes
netsh advfirewall firewall add rule name="TLI_Wake-on-LAN" dir=in action=allow profile=any localport=9 protocol=TCP edge=yes
ipconfig
echo %username%
echo %userdomain%


### CONDIVIDI DISCO
	esegui / apri: regedt32
	Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System
	nuovo --> valore DWORD(32bit) --> LocalAccountTokenFilterPolicy --> dati valore: 1
	start --> consenti app attraveros windows firewwal  --> condivisione file rete stampante
	finder / vai / connessione al server  --> smb://192.168.1.118/d$



### SVEGLIARE PC REMOTO
brew install wakeonlan
ipconfig /all
	Indirizzo fisico. . . . . . . . . . . : EE-28-**********
	Indirizzo IPv4. . . . . . . . . . . . : 192.168.1.118(Preferenziale)


/usr/local/Cellar/wakeonlan/0.41/bin/wakeonlan -i 192.168.1.255 EE:28:********
/usr/local/Cellar/wakeonlan/0.41/bin/wakeonlan -i 192.168.1.118 EE:28:********
