start .    # open in explorer
F:         # cambia unita
tree /F    # windows


ping www.google.com
nslookup      #name dominio

d:  #change disk


## set variable ambiente
$env:AWS_PROFILE="NAME_PROFILE"
[System.Environment]::SetEnvironmentVariable("AWS_PROFILE", "NAME_PROFILE", "User")
echo $env:AWS_PROFILE
Get-ChildItem Env:


Get-Content D:\log.txt -Tail 3
Get-Content D:\log.txt –Wait


wmic process get processid,parentprocessid,executablepath | find "nameProcess"   #Find a Windows process based on its description, using CMD
tasklist /v | find "nameProcess"    #Find a Windows process based on its description, using CMD

taskkill /F /PID  processId     #Kill process


bootcfg     #Configurare, interrogare o modificare le impostazioni del file Boot.ini.
driverquery #Visualizzazione di un elenco dei drivers di tutte le periferiche installate e delle loro propriet‡.
getmac      #Visualizzazione dell'indirizzo MAC (Media Access Control) e di un elenco dei protocolli di rete associati ad ogni indirizzo per tutte le schede di rete in ogni computer.
gpresult    #Visualizzazione delle impostazioni del Group Policy e dell'RSOP (Resultant Set of Policy) di un utente o di un computer.

netsh #Questo comando puÚ essere utilizzato all'interno del "Netsh Interface IP" al fine di configurare il protocollo TCP/IP.
schtasks #Schematizzazione dei comandi e dei programmi che girano peridicamente o in un tempo specifico sul computer.
systeminfo #Visualizzazione di informazioni dettagliate sulla configurazione del computer e del sistema operativo installato su di esso.




#I comandi base

cd  #Il comando cd permette di cambiare cartella.
copy  #Il comando copy permette la copia di file o gruppi di file.
copy *.csv all.csv
xcopy #Il comando xcopy cipia i file (ad esclusione dei file nascosti e di sistema) e la struttura delle directory (intere cartelle, sottocartelle incluse).

mkdir   #Il comando mkdir crea una nuova directory (cartella).
rmdir #Il comando rmdir rimuove una directory.
rd /s /q "path"  ## cancela la cartella in modo ricorsivo

dir #Il comando dir visualizza l'elenco dei file e delle subdirectory di una directory.

del #Il comando del elimina uno o piu' file.
deltree #Il comando deltree elimina una directory e tutti i file e le sottodirectory in essa contenuti.
undelete  #Il comando undelete ripristina i file cancellati precedentemente con il comando del.

move  #Il comando move sposta file o cartelle su un nuovo percorso.
ren #Il comando ren consente di rinominare file o cartelle.
rename  #Il comando rename rinomina uno o piu' file.
type    #Il comando type visualizza il contenuto di un file di testo.
replace #Il comando replace sostituisce i file.


ipconfig  #Il comando ipconfig permette di conoscere il proprio indirizzo IP, quello del SUBNET MASK e del GATEWAY.
ping  #Il comando ping consente di verificare la comunicazione tra due computer di una rete.
ver   #Il comando ver visualizza la versione di MS-DOS in uso.
path  #Il comando path visualizza o imposta un percorso di ricerca per i file eseguibili.


taskkill  #Il comando taskkill (se non si avvia digitare tskill anziche' taskkill) sostituisce il Task Manager di Windows e permette di eseguire operazioni di chiusura di task rapidissime.
#Utilizzandone le varie opzioni e' possibile, inoltre, intervenire su piu' programmi contemporaneamente, come per esempio nel caso delle applicazioni che non rispondono che possono essere chiuse tutte in un colpo solo digitando
taskkill /fi "status eq not responding"
vol #Il comando vol visualizza l'etichetta e il numero di serie di volume del disco.




attrib  #Il comando attib visualizza o modifica gli attributi dei file.
chdir #Il comando chdir cambia la directory corrente o ne visualizza il nome.
chkdsk  #Il comando chkdsk verifica il disco e visualizza una relazione sul suo stato.
cls #Il comando cls cancella il contenuto della schermata.
compact #Il comando compact permette di comprimere e decomprimere nelle partizioni NTFS i file di una directory, e di rammentare che tutti i file che si aggiungeranno in quella directory andranno compressi o decompressi.

defrag  #Il comando defrag riorganizza i file su disco per ottimizzarne l'uso.

doskey  #Il comando doskey modifica righe di comando, chiama comandi di MS-DOS e crea macro.

expand  #Il comando expand decomprime uno o piu' file compressi.
fdisk #Il comando fdisk configura un disco rigido per l'utilizzo con MS-DOS.

format  #Il comando format da' luogo alla formattazione di un'unita'.

label #Il comando label crea, modifica o elimina l'etichetta di volume di un disco.

more  #Il comando more visualizza i dati di output una schermata per volta.

print #Il comando print stampa un file di testo consentendo di usare altri comandi di MS-DOS.

prompt  #Il comando prompt cambia il prompt dei comandi di MS-DOS.

rd  #Il comando rd rimuove una directory.

recover #Il comando recover permette di recuperare documenti andati perduti in settori corrotti del disco fisso (sempre che si abbia un file system NTFS).

runas #Il comando runas permette di assumere temporaneamente il profilo di un altro utente (magari quello di amministratore), senza dover interrompere la sessione di lavoro, di riaccedere a Windows con un altro profilo utente, di eseguire un task specifico e di tornare alla normale attivita' con il profilo di partenza.

sort  #Il comando sort permette di ordinare alfabeticamente i contenuti di un file di testo e di inserirne il risultato in un nuovo file di testo.

subst #Il comando subst associa un percorso ad una lettera di unita'.

unformat  #Il comando unformat ripristina i dati di un disco cancellati con il comando format.


