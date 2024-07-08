--Creazione tabella STUDENTE

CREATE TABLE Studente (
      ID_Studente VARCHAR2 (20) NOT NULL,
      Nome VARCHAR2 (50),
      Cognome VARCHAR2 (50),
      Data_di_nascita DATE,
      Codice_fiscale VARCHAR2 (16),
      Indirizzo VARCHAR2 (150),
      Email VARCHAR2 (50),
      Numero_telefono NUMBER (10),
      CONSTRAINT pk_idstudente_studente PRIMARY KEY (ID_Studente)
);

--insert

INSERT INTO Studente (ID_Studente, Nome, Cognome, Data_di_nascita, Codice_fiscale, Indirizzo, Email, Numero_telefono)
VALUES ('S001', 'Mario', 'Rossi', TO_DATE('15/05/1995', 'DD/MM/YYYY'), 'RSSMRA95E15H501X', 'Via Roma 1, Roma', 'mario.rossi@email.com', 3331234567);

INSERT INTO Studente (ID_Studente, Nome, Cognome, Data_di_nascita, Codice_fiscale, Indirizzo, Email, Numero_telefono)
VALUES ('S002', 'Anna', 'Bianchi', TO_DATE('22/09/1998', 'DD/MM/YYYY'), 'BNCNNA98P62F205Y', 'Via Dante 5, Milano', 'anna.bianchi@email.com', 3389876543);

INSERT INTO Studente (ID_Studente, Nome, Cognome, Data_di_nascita, Codice_fiscale, Indirizzo, Email, Numero_telefono)
VALUES ('S003', 'Luca', 'Verdi', TO_DATE('10/03/1997', 'DD/MM/YYYY'), 'VRDLCU97C10A944Q', 'Corso Italia 10, Bologna', 'luca.verdi@email.com', 3351122334);

INSERT INTO Studente (ID_Studente, Nome, Cognome, Data_di_nascita, Codice_fiscale, Indirizzo, Email, Numero_telefono)
VALUES ('S004', 'Giulia', 'Neri', TO_DATE('03/12/1999', 'DD/MM/YYYY'), 'NREGLI99T43D612S', 'Piazza Garibaldi 3, Firenze', 'giulia.neri@email.com', 3367788990);

INSERT INTO Studente (ID_Studente, Nome, Cognome, Data_di_nascita, Codice_fiscale, Indirizzo, Email, Numero_telefono)
VALUES ('S005', 'Marco', 'Gialli', TO_DATE('18/07/1996', 'DD/MM/YYYY'), 'GLLMRC96L18G224W', 'Via Mazzini 8, Torino', 'marco.gialli@email.com', 3394455667);


--SELECT

SELECT * FROM Studente;

SELECT DISTINCT ID_Materia FROM Materia;



--Creazione tabella CORSO

CREATE TABLE Corso (
     ID_Corso VARCHAR2 (20) NOT NULL,
     Luogo VARCHAR2 (50),
     Orari VARCHAR2 (15),
     Crediti NUMBER,
     CONSTRAINT pk_id_corso PRIMARY KEY (ID_Corso)
);
ALTER TABLE Corso MODIFY Orari VARCHAR2 (15);
--insert

INSERT INTO Corso (ID_Corso, Luogo, Orari, Crediti)
VALUES ('C002', 'Aula Magna', '9:00-11:00', 6);

INSERT INTO Corso (ID_Corso, Luogo, Orari, Crediti)
VALUES ('C003', 'Laboratorio Informatica', '14:00-16:00', 8);

INSERT INTO Corso (ID_Corso, Luogo, Orari, Crediti)
VALUES ('C004', 'Aula 101', '11:00-13:00', 4);

INSERT INTO Corso (ID_Corso, Luogo, Orari, Crediti)
VALUES ('C005', 'Aula Video', '16:00-18:00', 6);

INSERT INTO Corso (ID_Corso, Luogo, Orari, Crediti)
VALUES ('C006', 'Biblioteca', '10:00-12:00', 5);


-- Creazione della tabella LAUREA
CREATE TABLE Laurea (
     ID_Laurea VARCHAR2 (20) NOT NULL,
     Facolta VARCHAR2 (50),
     Anni Number,
     CONSTRAINT pk_id_laurea PRIMARY KEY (ID_Laurea)
);
--insert
INSERT INTO Laurea (ID_Laurea, Facolta, Anni)
VALUES ('L001', 'Ingegneria Informatica', 3);

INSERT INTO Laurea (ID_Laurea, Facolta, Anni)
VALUES ('L002', 'Economia e Commercio', 3);

INSERT INTO Laurea (ID_Laurea, Facolta, Anni)
VALUES ('L003', 'Medicina e Chirurgia', 6);

INSERT INTO Laurea (ID_Laurea, Facolta, Anni)
VALUES ('L004', 'Lettere e Filosofia', 3);

INSERT INTO Laurea (ID_Laurea, Facolta, Anni)
VALUES ('L005', 'Scienze Biologiche', 3);


-- Creazione della tabella DOCENTE
CREATE TABLE Docente (
    ID_Docente VARCHAR2 (20) NOT NULL,
    Nome VARCHAR2 (20),
    Cognome VARCHAR2 (20),
    Email VARCHAR2 (50),
    CONSTRAINT pk_id_docente_ PRIMARY KEY (ID_Docente)
);

--insert
INSERT INTO Docente (ID_Docente, Nome, Cognome, Email)
VALUES ('D001', 'Marco', 'Rossi', 'marco.rossi@uni.it');

INSERT INTO Docente (ID_Docente, Nome, Cognome, Email)
VALUES ('D002', 'Laura', 'Bianchi', 'laura.bianchi@uni.it');

INSERT INTO Docente (ID_Docente, Nome, Cognome, Email)
VALUES ('D003', 'Giovanni', 'Verdi', 'giovanni.verdi@uni.it');

INSERT INTO Docente (ID_Docente, Nome, Cognome, Email)
VALUES ('D004', 'Francesca', 'Neri', 'francesca.neri@uni.it');

INSERT INTO Docente (ID_Docente, Nome, Cognome, Email)
VALUES ('D005', 'Antonio', 'Gialli', 'antonio.gialli@uni.it');
    
-- Creazione della tabella FREQUENZA 
CREATE TABLE Frequenza (
     ID_Frequenza VARCHAR2 (20) NOT NULL,
     ID_Studente VARCHAR2 (20),
     ID_Corso VARCHAR2(20),
     Data_iscrizione DATE,
     CONSTRAINT pk_id_frequenza PRIMARY KEY (ID_Frequenza),
     CONSTRAINT FK_frequenza_Studente FOREIGN KEY (ID_Studente) REFERENCES Studente(ID_Studente), 
     CONSTRAINT FK_frequenza_Corso FOREIGN KEY (ID_Corso) REFERENCES Corso(ID_Corso)
);

--insert 
INSERT INTO Frequenza (ID_Frequenza, ID_Studente, ID_Corso, Data_iscrizione)
VALUES ('F001', 'S001', 'C001', TO_DATE('2023-09-01', 'YYYY-MM-DD'));

INSERT INTO Frequenza (ID_Frequenza, ID_Studente, ID_Corso, Data_iscrizione)
VALUES ('F002', 'S002', 'C002', TO_DATE('2023-09-02', 'YYYY-MM-DD'));

INSERT INTO Frequenza (ID_Frequenza, ID_Studente, ID_Corso, Data_iscrizione)
VALUES ('F003', 'S003', 'C003', TO_DATE('2023-09-03', 'YYYY-MM-DD'));

INSERT INTO Frequenza (ID_Frequenza, ID_Studente, ID_Corso, Data_iscrizione)
VALUES ('F004', 'S004', 'C004', TO_DATE('2023-09-04', 'YYYY-MM-DD'));

INSERT INTO Frequenza (ID_Frequenza, ID_Studente, ID_Corso, Data_iscrizione)
VALUES ('F005', 'S005', 'C005', TO_DATE('2023-09-05', 'YYYY-MM-DD'));

-- Creazione della tabella CONSEGUE
CREATE TABLE Consegue (
    ID_Consegue VARCHAR2 (20)NOT NULL,
    ID_Studente VARCHAR2 (20),
    ID_Laurea   VARCHAR2 (20),
    Data_Conseguimento DATE,
    CONSTRAINT pk_id_consegue PRIMARY KEY (ID_Consegue),
    CONSTRAINT FK_consegue_Studente FOREIGN KEY (ID_Studente) REFERENCES Studente(ID_Studente),
    CONSTRAINT FK_consegue_Laurea FOREIGN KEY (ID_Laurea) REFERENCES Laurea(ID_Laurea)
);

--insert
INSERT INTO Consegue (ID_Consegue, ID_Studente, ID_Laurea, Data_Conseguimento)
VALUES ('CG001', 'S001', 'L001', TO_DATE('11/07/2023', 'DD/MM/YYYY'));

INSERT INTO Consegue (ID_Consegue, ID_Studente, ID_Laurea, Data_Conseguimento)
VALUES ('CG002', 'S002', 'L002', TO_DATE('12/07/2023', 'DD/MM/YYYY'));

INSERT INTO Consegue (ID_Consegue, ID_Studente, ID_Laurea, Data_Conseguimento)
VALUES ('CG003', 'S003', 'L003', TO_DATE('14/07/2023', 'DD/MM/YYYY'));

INSERT INTO Consegue (ID_Consegue, ID_Studente, ID_Laurea, Data_Conseguimento)
VALUES ('CG004', 'S004', 'L004', TO_DATE('13/07/2023', 'DD/MM/YYYY'));

INSERT INTO Consegue (ID_Consegue, ID_Studente, ID_Laurea, Data_Conseguimento)
VALUES ('CG005', 'S005', 'L005', TO_DATE('15/08/2023', 'DD/MM/YYYY'));

-- Creazione della tabella MATERIA 
CREATE TABLE MATERIA (
   ID_Materia VARCHAR2 (20) NOT NULL,
   ID_Laurea  VARCHAR2 (20),
   ID_Corso VARCHAR2 (20),
   CONSTRAINT pk_id_materia PRIMARY KEY (ID_Materia),
   CONSTRAINT FK_materia_laurea FOREIGN KEY (ID_Laurea) REFERENCES Laurea(ID_Laurea),
   CONSTRAINT FK_materia_corso FOREIGN KEY (ID_Corso) REFERENCES Corso(ID_Corso)
);

--insert
INSERT INTO MATERIA (ID_Materia, ID_Laurea, ID_Corso)
VALUES ('M001', 'L001', 'C001');

INSERT INTO MATERIA (ID_Materia, ID_Laurea, ID_Corso)
VALUES ('M002', 'L001', 'C002');

INSERT INTO MATERIA (ID_Materia, ID_Laurea, ID_Corso)
VALUES ('M003', 'L002', 'C003');

INSERT INTO MATERIA (ID_Materia, ID_Laurea, ID_Corso)
VALUES ('M004', 'L003', 'C004');

INSERT INTO MATERIA (ID_Materia, ID_Laurea, ID_Corso)
VALUES ('M005', 'L004', 'C005');