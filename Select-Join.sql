-- Creazione delle tabelle

CREATE TABLE ATTORI (
    CodAttore INT PRIMARY KEY,
    Nome VARCHAR(100),
    AnnoNascita INT,
    Nazionalità VARCHAR(50)
);

CREATE TABLE FILM (
    CodFilm INT PRIMARY KEY,
    Titolo VARCHAR(200),
    AnnoProduzione INT,
    Nazionalità VARCHAR(50),
    Regista VARCHAR(100),
    Genere VARCHAR(50)
);

CREATE TABLE RECITA (
    CodAttore INT,
    CodFilm INT,
    PRIMARY KEY (CodAttore, CodFilm),
    FOREIGN KEY (CodAttore) REFERENCES ATTORI(CodAttore),
    FOREIGN KEY (CodFilm) REFERENCES FILM(CodFilm)
);

CREATE TABLE SALE (
    CodSala INT PRIMARY KEY,
    Posti INT,
    Nome VARCHAR(100),
    Città VARCHAR(100)
);

CREATE TABLE PROIEZIONI (
    CodProiezione INT PRIMARY KEY,
    CodFilm INT,
    CodSala INT,
    Incasso DECIMAL(10, 2),
    DataProiezione DATE,
    FOREIGN KEY (CodFilm) REFERENCES FILM(CodFilm),
    FOREIGN KEY (CodSala) REFERENCES SALE(CodSala)
);

-- Inserimento di alcuni dati di esempio (necessari per testare le query)

INSERT INTO ATTORI (CodAttore, Nome, AnnoNascita, Nazionalità) VALUES
(1, 'Marcello Mastroianni', 1924, 'Italiana'),
(2, 'Sophia Loren', 1934, 'Italiana'),
(3, 'Robin Williams', 1951, 'Americana'),
(4, 'Jean Reno', 1948, 'Francese'),
(5, 'Federico Fellini', 1920, 'Italiana');

INSERT INTO FILM (CodFilm, Titolo, AnnoProduzione, Nazionalità, Regista, Genere) 
       VALUES (1, 'La Dolce Vita', 1960, 'Italiana', 'Federico Fellini', 'Drammatico'),
INSERT INTO FILM (CodFilm, Titolo, AnnoProduzione, Nazionalità, Regista, Genere)
       VALUES (2, 'Casablanca', 1942, 'Americana', 'Michael Curtiz', 'Drammatico'),
       INSERT INTO FILM (CodFilm, Titolo, AnnoProduzione, Nazionalità, Regista, Genere)
       VALUES (3, 'Jurassic Park', 1993, 'Americana', 'Steven Spielberg', 'Fantascienza'),
INSERT INTO FILM (CodFilm, Titolo, AnnoProduzione, Nazionalità, Regista, Genere)
       VALUES (4, 'Godzilla', 1998, 'Giapponese', 'Takao Okawara', 'Fantascienza'),
INSERT INTO FILM (CodFilm, Titolo, AnnoProduzione, Nazionalità, Regista, Genere)
       VALUES (5, '8½', 1963, 'Italiana', 'Federico Fellini', 'Drammatico'),
INSERT INTO FILM (CodFilm, Titolo, AnnoProduzione, Nazionalità, Regista, Genere)
       VALUES (6, 'E.T.', 1982, 'Americana', 'Steven Spielberg', 'Fantascienza');

INSERT INTO RECITA (CodAttore, CodFilm) VALUES
(1, 1), (1, 5), (2, 1), (3, 3), (4, 4);

INSERT INTO SALE (CodSala, Posti, Nome, Città) VALUES (1, 100, 'Cinema Centrale', 'Pisa');
INSERT INTO SALE (CodSala, Posti, Nome, Città) VALUES (2, 80, 'Cinema Lux', 'Pisa');
INSERT INTO SALE (CodSala, Posti, Nome, Città) VALUES (3, 120, 'Multisala Napoli', 'Napoli');
INSERT INTO SALE (CodSala, Posti, Nome, Città) VALUES (4, 50, 'Cinema Roma', 'Roma');

INSERT INTO PROIEZIONI (CodProiezione, CodFilm, CodSala, Incasso, DataProiezione) VALUES (1, 1, 1, 1500.00, '2004-12-25');
INSERT INTO PROIEZIONI (CodProiezione, CodFilm, CodSala, Incasso, DataProiezione) VALUES (2, 3, 2, 2500.00, '2005-01-15');
INSERT INTO PROIEZIONI (CodProiezione, CodFilm, CodSala, Incasso, DataProiezione) VALUES (3, 4, 3, 1800.00, '2004-12-25');
INSERT INTO PROIEZIONI (CodProiezione, CodFilm, CodSala, Incasso, DataProiezione) VALUES (4, 2, 1, 1200.00, '2005-01-10');
INSERT INTO PROIEZIONI (CodProiezione, CodFilm, CodSala, Incasso, DataProiezione) VALUES (5, 5, 2, 2200.00, '2005-01-20');
INSERT INTO PROIEZIONI (CodProiezione, CodFilm, CodSala, Incasso, DataProiezione) VALUES (6, 6, 4, 3000.00, '2005-01-05');

-- Query per le interrogazioni richieste

-- 1. Il nome di tutte le sale di Pisa
SELECT Nome
FROM SALE
WHERE Città = 'Pisa';

-- 2. Il titolo dei film di Fellini prodotti dopo il 1960
SELECT Titolo
FROM FILM
WHERE Regista = 'Federico Fellini' AND AnnoProduzione > 1960;

-- 3. Il titolo e la durata dei film di fantascienza giapponesi o francesi prodotti dopo il 1990
SELECT Titolo
FROM FILM
WHERE Genere = 'Fantascienza' 
  AND (Nazionalità = 'Giapponese' OR Nazionalità = 'Francese')
  AND AnnoProduzione > 1990;

-- 4. Il titolo dei film di fantascienza giapponesi prodotti dopo il 1990 oppure francesi
SELECT Titolo
FROM FILM
WHERE (Genere = 'Fantascienza' AND Nazionalità = 'Giapponese' AND AnnoProduzione > 1990)
   OR Nazionalità = 'Francese';

-- 5. Il titolo dei film dello stesso regista di "Casablanca"
SELECT Titolo
FROM FILM
WHERE Regista = (SELECT Regista FROM FILM WHERE Titolo = 'Casablanca');

-- 6. Il titolo ed il genere dei film proiettati il giorno di Natale 2004
SELECT DISTINCT F.Titolo, F.Genere
FROM FILM F
JOIN PROIEZIONI P ON F.CodFilm = P.CodFilm
WHERE P.DataProiezione = '2004-12-25';

-- 7. Il titolo ed il genere dei film proiettati a Napoli il giorno di Natale 2004
SELECT DISTINCT F.Titolo, F.Genere
FROM FILM F
JOIN PROIEZIONI P ON F.CodFilm = P.CodFilm
JOIN SALE S ON P.CodSala = S.CodSala
WHERE P.DataProiezione = '2004-12-25' AND S.Città = 'Napoli';

-- 8. I nomi delle sale di Napoli in cui il giorno di Natale 2004 è stato proiettato un film con R.Williams
SELECT DISTINCT S.Nome
FROM SALE S
JOIN PROIEZIONI P ON S.CodSala = P.CodSala
JOIN FILM F ON P.CodFilm = F.CodFilm
JOIN RECITA R ON F.CodFilm = R.CodFilm
JOIN ATTORI A ON R.CodAttore = A.CodAttore
WHERE S.Città = 'Napoli'
  AND P.DataProiezione = '2004-12-25'
  AND A.Nome = 'Robin Williams';

-- 9. Il titolo dei film in cui recita Mastroianni oppure Loren
SELECT DISTINCT F.Titolo
FROM FILM F
JOIN RECITA R ON F.CodFilm = R.CodFilm
JOIN ATTORI A ON R.CodAttore = A.CodAttore
WHERE A.Nome LIKE '%Mastroianni' OR A.Nome LIKE '%Loren';

-- 10. Il titolo dei film in cui recitano M. Mastroianni e S.Loren
SELECT F.Titolo
FROM FILM F
JOIN RECITA R1 ON F.CodFilm = R1.CodFilm
JOIN ATTORI A1 ON R1.CodAttore = A1.CodAttore
JOIN RECITA R2 ON F.CodFilm = R2.CodFilm
JOIN ATTORI A2 ON R2.CodAttore = A2.CodAttore
WHERE A1.Nome LIKE '%Mastroianni' AND A2.Nome LIKE '%Loren';

-- 11. Per ogni film in cui recita un attore francese, il titolo del film e il nome dell'attore
SELECT DISTINCT F.Titolo, A.Nome
FROM FILM F
JOIN RECITA R ON F.CodFilm = R.CodFilm
JOIN ATTORI A ON R.CodAttore = A.CodAttore
WHERE A.Nazionalità = 'Francese';

-- 12. Per ogni film che è stato proiettato a Pisa nel gennaio 2005, il titolo del film e il nome della sala
SELECT DISTINCT F.Titolo, S.Nome
FROM FILM F
JOIN PROIEZIONI P ON F.CodFilm = P.CodFilm
JOIN SALE S ON P.CodSala = S.CodSala
WHERE S.Città = 'Pisa'
  AND P.DataProiezione BETWEEN '2005-01-01' AND '2005-01-31';

-- 13. Il numero di sale di Pisa con più di 60 posti
SELECT COUNT(*)
FROM SALE
WHERE Città = 'Pisa' AND Posti > 60;

-- 14. Il numero totale di posti nelle sale di Pisa
SELECT SUM(Posti)
FROM SALE
WHERE Città = 'Pisa';

-- 15. Per ogni città, il numero di sale
SELECT Città, COUNT(*) as NumeroSale
FROM SALE
GROUP BY Città;

-- 16. Per ogni città, il numero di sale con più di 60 posti
SELECT Città, COUNT(*) as NumeroSale
FROM SALE
WHERE Posti > 60
GROUP BY Città;

-- 17. Per ogni regista, il numero di film diretti dopo il 1990
SELECT Regista, COUNT(*) as NumeroFilm
FROM FILM
WHERE AnnoProduzione > 1990
GROUP BY Regista;

-- 18. Per ogni regista, l'incasso totale di tutte le proiezioni dei suoi film
SELECT F.Regista, SUM(P.Incasso) as IncassoTotale
FROM FILM F
JOIN PROIEZIONI P ON F.CodFilm = P.CodFilm
GROUP BY F.Regista;

-- 19. Per ogni film di Spielberg, il titolo del film, il numero totale di proiezioni a Pisa e l'incasso totale
SELECT F.Titolo, COUNT(P.CodProiezione) as NumeroProiezioni, SUM(P.Incasso) as IncassoTotale
FROM FILM F
LEFT JOIN PROIEZIONI P ON F.CodFilm = P.CodFilm
LEFT JOIN SALE S ON P.CodSala = S.CodSala
WHERE F.Regista = 'Steven Spielberg' AND S.Città = 'Pisa'
GROUP BY F.CodFilm, F.Titolo;

-- 20. Per ogni regista e per ogni attore, il numero di film del regista con l'attore
SELECT F.Regista, A.Nome, COUNT(DISTINCT F.CodFilm) as NumeroFilm
FROM FILM F
JOIN RECITA R ON F.CodFilm = R.CodFilm
JOIN ATTORI A ON R.CodAttore = A.CodAttore
GROUP BY F.Regista, A.Nome;

-- 21. Il regista ed il titolo dei film in cui recitano meno di 6 attori
SELECT F.Regista, F.Titolo
FROM FILM F
JOIN RECITA R ON F.CodFilm = R.CodFilm
GROUP BY F.CodFilm, F.Regista, F.Titolo
HAVING COUNT(DISTINCT R.CodAttore) < 6;

-- 22. Per ogni film prodotto dopo il 2000, il codice, il titolo e l'incasso totale di tutte le sue proiezioni
SELECT F.CodFilm, F.Titolo, SUM(P.Incasso) as IncassoTotale
FROM FILM F
LEFT JOIN PROIEZIONI P ON F.CodFilm = P.CodFilm
WHERE F.AnnoProduzione > 2000
GROUP BY F.CodFilm, F.Titolo;

-- 23. Il numero di attori dei film in cui appaiono solo attori nati prima del 1970
SELECT F.Titolo, COUNT(DISTINCT R.CodAttore) as NumeroAttori
FROM FILM F
JOIN RECITA R ON F.CodFilm = R.CodFilm
JOIN ATTORI A ON R.CodAttore = A.CodAttore
GROUP BY F.CodFilm, F.Titolo
HAVING MAX(A.AnnoNascita) < 1970;


SELECT S.Nome, SUM(P.Incasso) AS IncassoTotale
FROM SALE S
JOIN PROIEZIONI P ON S.CodSala = P.CodSala
WHERE S.Città = 'Pisa'
  AND P.DataProiezione BETWEEN '2005-01-01' AND '2005-01-31'
GROUP BY S.Nome
HAVING SUM(P.Incasso) > 2000;

-- 24. Per ogni film di fantascienza, il titolo e l'incasso totale di tutte le sue proiezioni
SELECT F.Titolo, SUM(P.Incasso) as IncassoTotale
FROM FILM F
LEFT JOIN PROIEZIONI P ON F.CodFilm = P.CodFilm
WHERE F.Genere = 'Fantascienza'
GROUP BY F.CodFilm, F.Titolo;

-- 25. Per ogni film di fantascienza il titolo e l'incasso totale di tutte le sue proiezioni successive al 1/1/01
SELECT F.Titolo, SUM(P.Incasso) as IncassoTotale
FROM FILM F
LEFT JOIN PROIEZIONI P ON F.CodFilm = P.CodFilm
WHERE F.Genere = 'Fantascienza' AND P.DataProiezione > '2001-01-01'
GROUP BY F.CodFilm, F.Titolo;

-- 26. Per ogni film di fantascienza che non è mai stato proiettato prima del 1/1/01 il titolo e l'incasso totale di tutte le sue proiezioni
SELECT F.Titolo, SUM(P.Incasso) as IncassoTotale
FROM FILM F
LEFT JOIN PROIEZIONI P ON F.CodFilm = P.CodFilm
WHERE F.Genere = 'Fantascienza'
  AND F.CodFilm NOT IN (
    SELECT DISTINCT CodFilm
    FROM PROIEZIONI
    WHERE DataProiezione < '2001-01-01'
  )
GROUP BY F.CodFilm, F.Titolo;

-- 27. Per ogni sala di Pisa, che nel mese di gennaio 2005 ha incassato più di 2000 €, il nome della sala e l'incasso totale (sempre del mese di gennaio 2005)
SELECT S.Nome, SUM(P.Incasso) as IncassoTotale
FROM SALE S
JOIN PROIEZIONI P ON S.CodSala = P.CodSala
WHERE S.Città = 'Pisa'
  AND P.DataProiezione BETWEEN '2005-01-01' AND '2005-01-31'
GROUP BY S.CodSala, S.Nome
HAVING SUM(P.Incasso) > 2000;

-- 28. I titoli dei film che non sono mai stati proiettati a Pisa
SELECT F.Titolo
FROM FILM F
WHERE F.CodFilm NOT IN (
    SELECT DISTINCT P.CodFilm
    FROM PROIEZIONI P
    JOIN SALE S ON P.CodSala = S.CodSala
    WHERE S.Città = 'Pisa'
);

-- 29. I titoli dei film che sono stati proiettati solo a Pisa
SELECT F.Titolo
FROM FILM F
JOIN PROIEZIONI P ON F.CodFilm = P.CodFilm
JOIN SALE S ON P.CodSala = S.CodSala
GROUP BY F.CodFilm, F.Titolo
HAVING COUNT(DISTINCT CASE WHEN S.Città = 'Pisa' THEN S.CodSala END) > 0
   AND COUNT(DISTINCT CASE WHEN S.Città != 'Pisa' THEN S.CodSala END) = 0;

-- 30. I titoli dei film dei quali non vi è mai stata una proiezione con incasso superiore a 2000 €
SELECT F.Titolo
FROM FILM F
LEFT JOIN PROIEZIONI P ON F.CodFilm = P.CodFilm
GROUP BY F.CodFilm, F.Titolo
HAVING MAX(P.Incasso) IS NULL OR MAX(P.Incasso) <= 2000;

-- 31. I titoli dei film le cui proiezioni hanno sempre ottenuto un incasso superiore a 1000 €
SELECT F.Titolo
FROM FILM F
JOIN PROIEZIONI P ON F.CodFilm = P.CodFilm
GROUP BY F.CodFilm, F.Titolo
HAVING MIN(P.Incasso) > 1000;

-- 32. Il nome degli attori italiani che non hanno mai recitato in film di Fellini
SELECT A.Nome
FROM ATTORI A
WHERE A.Nazionalità = 'Italiana'
  AND A.CodAttore NOT IN (
    SELECT R.CodAttore
    FROM RECITA R
    JOIN FILM F ON R.CodFilm = F.CodFilm
    WHERE F.Regista = 'Federico Fellini'
);

-- 33. Il titolo dei film di Fellini in cui non recitano attori italiani
SELECT F.Titolo
FROM FILM F
LEFT JOIN RECITA R ON F.CodFilm = R.CodFilm
LEFT JOIN ATTORI A ON R.CodAttore = A.CodAttore
WHERE F.Regista = 'Federico Fellini'
GROUP BY F.CodFilm, F.Titolo
HAVING COUNT(CASE WHEN A.Nazionalità = 'Italiana' THEN 1 END) = 0;

-- 34. Il titolo dei film senza attori
SELECT F.Titolo
FROM FILM F
LEFT JOIN RECITA R ON F.CodFilm = R.CodFilm
GROUP BY F.CodFilm, F.Titolo
HAVING COUNT(R.CodAttore) = 0;

-- 35. Gli attori che prima del 1960 hanno recitato solo nei film di Fellini
SELECT A.Nome
FROM ATTORI A
JOIN RECITA R ON A.CodAttore = R.CodAttore
JOIN FILM F ON R.CodFilm = F.CodFilm
WHERE F.AnnoProduzione < 1960
GROUP BY A.CodAttore, A.Nome
HAVING COUNT(DISTINCT CASE WHEN F.Regista = 'Federico Fellini' THEN F.CodFilm END) > 0
   AND COUNT(DISTINCT CASE WHEN F.Regista != 'Federico Fellini' THEN F.CodFilm END) = 0;

-- 36. Gli attori che hanno recitato in film di Fellini solo prima del 1960
SELECT A.Nome
FROM ATTORI A
JOIN RECITA R ON A.CodAttore = R.CodAttore
JOIN FILM F ON R.CodFilm = F.CodFilm
WHERE F.Regista = 'Federico Fellini'
GROUP BY A.CodAttore, A.Nome
HAVING MAX(F.AnnoProduzione) < 1960
   AND COUNT(DISTINCT CASE WHEN F.AnnoProduzione >= 1960 THEN F.CodFilm END) = 0;