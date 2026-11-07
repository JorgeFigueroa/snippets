# Accesso SSH senza password tra PC Windows

Questa guida configura l'accesso SSH con chiave tra due PC Windows 10/11, fino al comando `ssh nome-host` senza password.

Nomi usati nella guida:

| Segnaposto | Significato |
|---|---|
| `PC-CLIENT` | PC da cui ci si collega |
| `PC-SERVER` | PC a cui ci si collega |
| `utente` | utente Windows su `PC-SERVER` |
| `indirizzo-del-pc` | IP o nome di `PC-SERVER` |
| `mia-chiave` | nome del file della chiave |

## 1. Due modi di autenticazione

| Modo | Come funziona | Quando usarlo |
|---|---|---|
| Utente e password | SSH chiede la password a ogni connessione | Primo accesso, prove |
| Chiave pubblica/privata | SSH usa la chiave, nessuna password del server | Uso quotidiano, automazione |

Comando con sola password:

```
ssh utente@indirizzo-del-pc
```

Forzare la sola password, ignorando le chiavi:

```
ssh -o PubkeyAuthentication=no utente@indirizzo-del-pc
```

## 2. Requisiti

| PC | Requisito |
|---|---|
| `PC-CLIENT` | Client OpenSSH (incluso in Windows 10/11) |
| `PC-SERVER` | OpenSSH Server installato e servizio `sshd` in esecuzione |

Installare e avviare OpenSSH Server su `PC-SERVER` (PowerShell come amministratore):

```
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
Set-Service -Name sshd -StartupType Automatic
Start-Service sshd
```

## 3. Creare la coppia di chiavi su PC-CLIENT

```
ssh-keygen -t ed25519 -f "$env:USERPROFILE\.ssh\mia-chiave" -C "commento-chiave"
```

Il comando crea due file nella cartella `.ssh`:

| File | Contenuto | Dove va |
|---|---|---|
| `mia-chiave` | chiave privata | resta su `PC-CLIENT` |
| `mia-chiave.pub` | chiave pubblica | si copia su `PC-SERVER` |

La passphrase è facoltativa. Con la passphrase la chiave resta protetta; si digita una volta per sessione con `ssh-agent` (sezione 8).

## 4. Copiare la chiave pubblica su PC-SERVER

Il file di destinazione dipende dal tipo di utente su `PC-SERVER`.

| Utente su PC-SERVER | File che SSH legge |
|---|---|
| Amministratore | `C:\ProgramData\ssh\administrators_authorized_keys` |
| Utente standard | `C:\Users\utente\.ssh\authorized_keys` |

Verificare se l'utente è amministratore:

```
net localgroup administrators
```

Copiare la chiave. Si incolla la riga del file `mia-chiave.pub` in uno dei due file, per esempio dopo averlo copiato su `PC-SERVER`:

```
Get-Content C:\percorso\mia-chiave.pub | Add-Content C:\ProgramData\ssh\administrators_authorized_keys
```

Un file con un altro nome (per esempio `mia-chiave.pub` lasciato in `ProgramData\ssh`) non viene letto da SSH.

## 5. Permessi (ACL) su PC-SERVER

Per l'utente amministratore:

```
icacls.exe "C:\ProgramData\ssh\administrators_authorized_keys" /inheritance:r /grant "Administrators:F" /grant "SYSTEM:F"
```

Per l'utente standard:

```
icacls "$env:USERPROFILE\.ssh\authorized_keys" /inheritance:r /grant "$($env:USERNAME):F" /grant "SYSTEM:F"
```

Riavviare il servizio:

```
Restart-Service sshd
```

## 6. Permessi della chiave privata su PC-CLIENT

SSH ignora una chiave privata leggibile da altri utenti ("UNPROTECTED PRIVATE KEY FILE"). Si lascia l'accesso solo al proprio utente:

```
icacls "$env:USERPROFILE\.ssh\mia-chiave" /inheritance:r
icacls "$env:USERPROFILE\.ssh\mia-chiave" /grant:r "$($env:USERNAME):(R)"
```

## 7. File config su PC-CLIENT

File: `C:\Users\<utente-locale>\.ssh\config`

```
Host nome-host
    HostName indirizzo-del-pc
    Port 22
    User utente
    PubkeyAuthentication yes
    IdentityFile ~/.ssh/mia-chiave
    IdentitiesOnly yes
```

## 8. Comando finale

```
ssh nome-host
```

Con una chiave protetta da passphrase, si carica la chiave una volta per sessione (PowerShell come amministratore, solo la prima volta):

```
Get-Service ssh-agent | Set-Service -StartupType Automatic
Start-Service ssh-agent
ssh-add "$env:USERPROFILE\.ssh\mia-chiave"
```

Per rimuovere la passphrase (accesso completamente automatico):

```
ssh-keygen -p -f "$env:USERPROFILE\.ssh\mia-chiave" -N '""'
```

## 9. Diagnosi

Eseguire la connessione con `-v` e leggere le righe "Offering public key" e "Authentications that can continue":

```
ssh -v nome-host
```

| Sintomo | Causa | Soluzione |
|---|---|---|
| Chiede la password del server | La chiave è rifiutata | Controllare file e permessi della sezione 4 e 5 |
| "UNPROTECTED PRIVATE KEY FILE" | Permessi della chiave privata troppo larghi | Sezione 6 |
| Chiede la passphrase | La chiave è protetta | `ssh-agent` o rimozione passphrase (sezione 8) |
| "REMOTE HOST IDENTIFICATION HAS CHANGED" | Voce vecchia in `known_hosts` per quell'IP | `ssh-keygen -R indirizzo-del-pc` |
| Impronta diversa dall'attesa | Chiave nel file diversa da quella usata | `ssh-keygen -lf` sul file di destinazione e sul `.pub` |

Confrontare le impronte:

```
ssh-keygen -lf "$env:USERPROFILE\.ssh\mia-chiave.pub"
ssh-keygen -lf C:\ProgramData\ssh\administrators_authorized_keys
```
