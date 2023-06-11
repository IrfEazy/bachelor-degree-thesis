# Relazione di laurea triennale UniBs di Irfan Cela

In questa repository è pubblicato la relazione di laurea triennale dello
studente Irfan Cela.
La relazione si riferisce, come la bibliografia suggerisce, al libro
**The Go Programming Language** di *Alan A. A. Donovan* e *Brian W.
Kernighan*.

Tutti i linguaggi di programmazione riflettono la filosofia di
programmazione dei loro creatori. Il progetto Go è nato dalla
frustrazione di Google di avere numerosi sistemi software che hanno
sofferto di un’esplosione di complessità.

Go è talvolta descritto come un “linguaggio C-like”, o come “C del XXI
secolo”. Da C, Go ha ereditato sintassi, flussi di controllo, tipi di
dati di base, chiamate di valore nel passaggio dei parametri, puntatori
e, soprattutto, enfasi C su programmi che compilano con codice macchina
efficiente e cooperano con le astrazioni del sistema operativo corrente.

Go offre la possibilità di definire array dinamici con un accesso
casuale efficiente, ma consente anche protocolli di condivisione
sofisticati che ricordano le liste concatenate.

Inoltre, Go offre pure una propria visione di thread creando la goroutine.
La goroutine si differenzia dal thread non per il servizio che offre,
ma perché ha una dimensione standard molto più piccola e molto più
flessibile di quella di un thread del sistema operativo. Se un thread
richiede almeno 2MB, una goroutine ne richiede almeno 2KB: il rapporto
è circa 1:1000.

Alcune delle caratteristiche del linguaggio Go che portano i
programmatori ad esserne attrati, specialmente per il cloud, è la sua
velocità e la sua capacità di ottenere un file binario statico privo di
dipendenze, per cui si è in grado di ottenere un programma scritto in
un dato sistema operativo e di trasferirlo su qualunque altra macchina,
senza vincoli, perché questo funzionerà senza richiedere installazioni
aggiuntive o creare conflitti nelle dipendenze.

Il grande vantaggio offerto da Go nel cloud è la possibilità di offrire
un file binario statico molto piccolo in termini di spazio. Preso per
esempio un Docker container (entità per distribuire il carico di lavoro
nel cloud), Go riesce a restituire allo sviluppatore un Docker file
delle dimensioni di qualche decina di megabytes, mentre con altri
linguaggi di programmazione - Java, Python, ecc. - le dimensioni
diventano facilmente 10 volte tanto, a raggiungere file di qualche
gigabyte.