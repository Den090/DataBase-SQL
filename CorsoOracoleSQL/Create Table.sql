CREATE TABLE  "DBADMIN"."anagrafica" (
    Nome VARCHAR2(20),
    Cognome VARCHAR2(20),
    LuogoNascita VARCHAR2(20),
    DataNascita DATE,
    CittaResidenza VARCHAR2(20),
    Indirizzo VARCHAR2(40),
    Cap VARCHAR2(5),
    NumeroFigli NUMBER
);



    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Luca', 'Rossi', 'Roma', TO_DATE('15/05/1980', 'DD/MM/YYYY'), 'Roma', 'Via Roma 1', '00100', 1);

    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Maria', 'Verdi', 'Milano', TO_DATE('16/06/1990', 'DD/MM/YYYY'), 'Milano', 'Via Milano 2', '10100', 0);

    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Anna', 'Viola', 'Torino', TO_DATE('16/06/1999', 'DD/MM/YYYY'), 'Torino', 'Via Torino 3', '01100', 2);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Marco', 'Verdi', 'Napoli', TO_DATE('03/10/1990', 'DD/MM/YYYY'), 'Napoli', 'Via Napoli 3', '80100', 0);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Luca', 'Ferrari', 'Torino', TO_DATE('11/03/1982', 'DD/MM/YYYY'), 'Torino', 'Via Torino 4', '10100', 3);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Giulia', 'Russo', 'Firenze', TO_DATE('07/05/1988', 'DD/MM/YYYY'), 'Firenze', 'Via Firenze 5', '50100', 1);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Marco', 'Esposito', 'Roma', TO_DATE('01/12/1995', 'DD/MM/YYYY'), 'Milano', 'Via Roma 6', '20100', 0);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Anna', 'Romano', 'Milano', TO_DATE('09/12/1987', 'DD/MM/YYYY'), 'Roma', 'Via Milano 7', '00100', 2);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Luca', 'Colombo', 'Venezia', TO_DATE('06/05/1992', 'DD/MM/YYYY'), 'Venezia', 'Via Venezia 8', '30100', 1);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Sara', 'Ricci', 'Bologna', TO_DATE('04/01/1983', 'DD/MM/YYYY'), 'Bologna', 'Via Bologna 9', '40100', 2);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Andrea', 'Marino', 'Palermo', TO_DATE('12/03/1991', 'DD/MM/YYYY'), 'Palermo', 'Via Palermo 10', '90100', 0);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Giulia', 'Fontana', 'Genova', TO_DATE('02/08/1986', 'DD/MM/YYYY'), 'Genova', 'Via Genova 11', '16100', 1);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Marco', 'Conti', 'Bari', TO_DATE('10/08/1993', 'DD/MM/YYYY'), 'Bari', 'Via Bari 12', '70100', 0);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Francesca', 'Gallo', 'Catania', TO_DATE('07/11/1989', 'DD/MM/YYYY'), 'Catania', 'Via Catania 13', '95100', 2);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Davide', 'De Luca', 'Verona', TO_DATE('03/02/1984', 'DD/MM/YYYY'), 'Verona', 'Via Verona 14', '37100', 1);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Anna', 'Mancini', 'Trieste', TO_DATE('09/10/1996', 'DD/MM/YYYY'), 'Trieste', 'Via Trieste 15', '34100', 0);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Luca', 'Greco', 'Padova', TO_DATE('01/07/1981', 'DD/MM/YYYY'), 'Padova', 'Via Padova 16', '35100', 3);
   
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Elena', 'Barbieri', 'Brescia', TO_DATE('05/09/1994', 'DD/MM/YYYY'), 'Brescia', 'Via Brescia 17', '25100', 1);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Simone', 'Rinaldi', 'Parma', TO_DATE('11/11/1987', 'DD/MM/YYYY'), 'Parma', 'Via Parma 18', '43100', 2);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Giulia', 'Caruso', 'Livorno', TO_DATE('08/02/1990', 'DD/MM/YYYY'), 'Livorno', 'Via Livorno 19', '57100', 0);
    
    INSERT INTO anagrafica (Nome, Cognome, LuogoNascita, DataNascita, CittaResidenza, Indirizzo, Cap, NumeroFigli)
     VALUES ('Andrea', 'Moretti', 'Cagliari', TO_DATE('12/05/1985', 'DD/MM/YYYY'), 'Cagliari', 'Via Cagliari 20', '09100', 1);

SELECT * FROM dual;