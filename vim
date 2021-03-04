##https://www.guru99.com/the-vi-editor.html
vi file_name
esc   #modalita commando
i     #modalita inserimento
v     #modalita visuale

w     #sposta parola succesiva
b     #sposta parola precendente
gg    #sposta prima riga
G     #sposta ultima riga
:100  #sposta riga 100

x     #cancella caractere nel cursore
dw    #cancella una parola
d3w   #cancella 3 parole
dd    #cancella riga
3dd   #cancella 3 righe

y     #copia caractere
Y     #copia tutta la riga
yw    #copia parola
y3w   #copia 3 parole
Y$    #copia fino a fine riga
p     #incolla dopo il cursore
P     #incolla prima il cursore

/parola              #ricerca un parola
/par.                #ricerca parte di una parola
:s/testo/new_testo    #sostituice testo
:s/testo//            #sostituice testo con psazio vouto  

:w    #salva file
:q    #chiudi file
:wq   #salva e chiudi
:q!   #forza la chiusura

[ESC] = Tona alla modalità NORMALE (COMANDO)
: = (due punti) Digitare comandi
:q = esci da ViM
:q! = uscita forzata
i = Il carattere "i" permette di passare dalla modalità comando alla modalità INSERIMENTO
dd = CANCELLA / TAGLIA una riga
x = cancella un carattere
/ = ricerca testo nel file
n = continua la ricerca del testo eseguito con /
P = incolla il testo tagliato con "dd"
v = Permette di passare dalla modalità comando alla modalità VISUALE
:w = salva
:w nomefile = salva con nome
