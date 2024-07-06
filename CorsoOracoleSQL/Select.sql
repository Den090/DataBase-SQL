 Esercizio
Separa ogni query richieste di seguito con uno spazio:
• Il comando SELECT: dato un database di un negozio online con una tabella prodotti
che contiene ID_prodotto, Nome, Prezzo e Categoria, scrivi una query che
seleziona tutti i prodotti.

• La parola chiave DISTINCT: usando lo stesso database, scrivi una query che
seleziona tutte le categorie uniche di prodotti.

• Operatori relazionali con WHERE: scrivi una query che seleziona tutti i prodotti con
un prezzo superiore a 30.

• BETWEEN con il testo: scrivi una query che seleziona tutti i prodotti il cui nome
inizia con una lettera tra 'A' e 'M'.

• Clausola ORDER BY: scrivi una query che seleziona tutti i prodotti e li ordina in base
al prezzo, dal più basso al più alto.

Operatore IN: scrivi una query che seleziona tutti i prodotti che
appartengono alle categorie 'Elettronica', 'Libri' e 'Abbigliamento'.

• Alias ovvero la parola chiave AS: scrivi una query che seleziona il
prezzo di tutti i prodotti, ma rinominare la colonna Prezzo come
Costo.

• LIMIT: scrivi una query che seleziona solo i primi 10 prodotti con il
prezzo più alto.

• Gli operatori aritmetici in SQL: considerando che la tabella prodotti
ha anche una colonna Costo_di_produzione, scrivi una query che
calcola il profitto per ogni prodotto (assumendo che il profitto sia
Prezzo - Costo_di_produzione).







CREATE TABLE NEGOZIO (
ID_prodotto VARCHAR2(20),
Nome VARCHAR2(20),
Prezzo NUMBER(10),
Categoria VARCHAR2(20)
);

INSERT ALL
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria) 
    VALUES ('PROD001', 'Smartphone Galaxy', 799.99, 'Elettronica');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria) 
    VALUES ('PROD002', 'Laptop ThinkPad X1', 1299.99, 'Elettronica');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
    VALUES ('PROD003', 'Camicia casual', 39.99, 'Abbigliamento');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
    VALUES ('PROD004', 'Scarpe da corsa Nike', 89.99, 'Calzature');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
    VALUES ('PROD005', 'Frigorifero Samsung', 599.99, 'Elettrodomestici');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
    VALUES ('PROD006', 'Libro', 24.99, 'Libri');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
    VALUES ('PROD007', 'Set di pentole', 149.99, 'Casa e Cucina');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
    VALUES ('PROD008', 'Televisore 4K', 549.99, 'Elettronica');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
    VALUES ('PROD009', 'Chitarra acustica', 199.99, 'Strumenti Musicali');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
    VALUES ('PROD010', 'Chanel N°5', 99.99, 'Bellezza');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
    VALUES ('PROD011', 'Aspirapolvere robot', 299.99, 'Elettrodomestici');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
    VALUES ('PROD012', 'Orologio Garmin', 179.99, 'Accessori');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
    VALUES ('PROD013', 'Tappetino yoga', 29.99, 'Sport e Fitness');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
    VALUES ('PROD014', 'Macchina fotografica', 649.99, 'Elettronica');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
    VALUES ('PROD015', 'Set di valigie', 159.99, 'Viaggi');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
    VALUES ('PROD016', 'Videogame FIFA', 59.99, 'Giochi');
    
    INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
    VALUES ('PROD017', 'Forno microonde', 79.99, 'Elettrodomestici');
    
    
INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
VALUES ('PROD018', 'Cuffie wireless', 129.99, 'Elettronica');
    
            INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
            VALUES ('PROD019', 'Divano in pelle', 899.99, 'Arredamento');
    
INSERT INTO NEGOZIO (ID_prodotto, Nome, Prezzo, Categoria)
VALUES ('PROD020', 'Set di attrezzi', 89.99, 'Fai da te');
 




1 Il comando SELECT: scrivi una query che seleziona tutti i prodotti.  
    
         SELECT * FROM negozio;


2 La parola chiave DISTINCT: scrivi una query che seleziona tutte le categorie uniche di prodotti.

     SELECT DISTINCT ID_prodotto FROM NEGOZIO ;
     SELECT DISTINCT Nome FROM NEGOZIO ;
     SELECT DISTINCT Prezzo FROM NEGOZIO ;
     SELECT DISTINCT Categoria FROM NEGOZIO ;


3 Operatori relazionali con WHERE: scrivi una query che seleziona tutti i prodotti con un prezzo superiore a 30.

        SELECT * FROM NEGOZIO WHERE Prezzo > 30;


4 BETWEEN con il testo: scrivi una query che seleziona tutti i prodotti il cui nome inizia con una lettera tra 'A' e 'M'.

        SELECT * FROM NEGOZIO WHERE Nome BETWEEN 'a' and 'm';


5 Clausola ORDER BY: scrivi una query che seleziona tutti i prodotti e li ordina in base al prezzo, dal più basso al più alto.

        SELECT * FROM NEGOZIO ORDER BY prezzo ASC;


6 Operatore IN: scrivi una query che seleziona tutti i prodotti che appartengono alle categorie 'Elettronica', 'Libri' e 'Abbigliamento'.

        SELECT * FROM NEGOZIO WHERE CATEGORIA IN ('Elettronica', 'Libri', 'Abbigliamento');




6 Alias ovvero la parola chiave AS: scrivi una query che seleziona il prezzo di tutti i prodotti, ma rinomina la colonna Prezzo come Costo.

    
         SELECT Prezzo AS Costo From NEGOZIO;



7 LIMIT: scrivi una query che seleziona solo i primi 10 prodotti con il prezzo più alto.

         SELECT * FROM NEGOZIO ORDER BY Prezzo DESC OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;




8 Gli operatori aritmetici in SQL: considerando che la tabella prodotti ha anche una colonna Costo_di_produzione, scrivi una query che calcola il profitto per ogni prodotto (assumendo che il profitto sia Prezzo - Costo_di_produzione).

        ALTER TABLE NEGOZIO ADD Costo_di_produzione NUMBER (10);

        UPDATE NEGOZIO
        SET Costo_di_produzione = 100
        WHERE ID_Prodotto = 'PROD001';

        UPDATE NEGOZIO
        SET Costo_di_produzione = 150
        WHERE ID_Prodotto = 'PROD002';


        UPDATE NEGOZIO
        SET Costo_di_produzione = 150
        WHERE ID_Prodotto = 'PROD003';

   
        UPDATE NEGOZIO
        SET Costo_di_produzione = 150
        WHERE ID_Prodotto = 'PROD004';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 100
       WHERE ID_Prodotto = 'PROD005';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 150
       WHERE ID_Prodotto = 'PROD006';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 100
       WHERE ID_Prodotto = 'PROD007';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 150
       WHERE ID_Prodotto = 'PROD008';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 100
       WHERE ID_Prodotto = 'PROD009';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 150
       WHERE ID_Prodotto = 'PROD010';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 100
       WHERE ID_Prodotto = 'PROD011';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 150
       WHERE ID_Prodotto = 'PROD012';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 100
       WHERE ID_Prodotto = 'PROD013';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 150
       WHERE ID_Prodotto = 'PROD014';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 150
       WHERE ID_Prodotto = 'PROD015';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 100
       WHERE ID_Prodotto = 'PROD016';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 150
       WHERE ID_Prodotto = 'PROD017';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 100
       WHERE ID_Prodotto = 'PROD018';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 150
       WHERE ID_Prodotto = 'PROD019';

       UPDATE NEGOZIO
       SET Costo_di_produzione = 100
       WHERE ID_Prodotto = 'PROD020';
     

       SELECT Nome, Prezzo, Costo_di_produzione, (Prezzo - Costo_di_produzione) AS Profitto FROM      NEGOZIO;
