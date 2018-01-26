
# PROGETTO E TEAM

Lo sviluppo di questa applicazione fa riferimento ad un progetto del corso di “Ingegneria del software 2” dell’Università degli studi di Trento, anno accademico 2017/2018. 
Si tratta, dunque, di un lavoro a scopo didattico mirato all’apprendimento di Ruby on Rails.

Il team di sviluppo dell’applicazione risulta così composto:
- Kashchuk Dmytro
- Ruggeri Lucrezia
- Spinel Fabiola

# PANORAMICA GENERALE 

BillingSystem è stata sviluppata in linguaggio Ruby (versione 2.4.2) utilizzando il framework Rails (versione 5.1.4).

BillingSystem è stata sviluppata al fine di gestire al meglio il sistema di fatturazione aziendale. Grazie a questa applicazione sarà possibile registrare i propri clienti e, per ognuno di loro, la lista delle fatture che gli vengono emesse a seguito di prestazioni lavorative da parte dell’utente del sistema.

## CLIENTI :boy:

Dalla homepage che si aprirà non appena avviato il software, sarà possibile creare una lista di clienti, inserendo i relativi dati: nome, cognome, codice fiscale e tariffa oraria. Quest’ultima sarà stabilita dall’utente del sistema, nonché fornitore del servizio esposto in fattura.
Accanto a tali dati, per ciascun cliente verrà generato automaticamente un link mediante cui vedere la lista completa delle fatture che gli sono state emesse. Inoltre, attraverso i link presenti nelle ultime due colonne, sarà possibile modificare i dati di un determinato cliente (Edit) oppure eliminarli (Destroy).

## LISTA DELLE FATTURE :euro:

Tramite il link Show bills relative this client l’utente potrà vedere la lista delle fatture che si riferiscono a uno specifico cliente ed eventualmente aggiungerne, modificarne o rimuoverne. I dati da inserire in fase di creazione di una nuova fattura sono: Numero, Data, Totale ore, Totale euro.
Il sistema genererà in automatico l’importo totale della singola fattura (Earn), dato dal prodotto fra il numero di ore lavorate e la tariffa oraria fissata.
In fondo alla pagina, verrà anche evidenziato il guadagno totale (Total), generato dal cliente cui la pagina si riferisce.

# DOCUMENTAZIONE
- Features: [link](features)
- User stories: [link](Assigments/userstories.txt)
- Test results: [link](Assigments/testResult.txt)
- Diagrammi ER: [link](Assigments/ER_railroady)
- Presentazione: [link](Assigments/Presentation.pdf)
- Coverage: [link](coverage/.last_run.json)

#### coverage
```sh
{
  "result": {
    "covered_percent": 79.05
  }
}

```
La copertura dei testi è del 79%

  

# LICENZA

BillingSystem viene distribuito secondo i termini previsti dalla Licenza MIT.
Si veda: [link](Assigments/license.txt)

# COPYRIGHT :copyright: 

Copyright (c) 2017 Kashchuk Ruggeri and Spinel

