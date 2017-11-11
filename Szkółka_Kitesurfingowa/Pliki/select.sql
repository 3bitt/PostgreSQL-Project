-- 1. Lista klientów i instruktorów którzy mieli razem zajęcia + numer lekcji.

SELECT(klient.imie, klient.nazwisko) AS klient, lekcja.id AS nr_lekcji,
(instruktor.imie, instruktor.nazwisko) AS instruktor FROM ((klient INNER JOIN lekcja
ON klient.id=lekcja.klient_id) INNER JOIN instruktor ON lekcja.instruktor_id=instruktor.id);


-- 2. Ilość przeprowadzonych lekcji w czerwcu.

SELECT count(data) AS ilosc_lekcji FROM lekcja WHERE data BETWEEN '2016-06-01' AND '2016-06-30';

-- 3. Użycie funkcji GROUP BY. Wypisanie listy instruktorów.

SELECT (instruktor.imie, instruktor.nazwisko) AS instruktor FROM instruktor INNER JOIN lekcja ON
lekcja.instruktor_id=instruktor.id GROUP BY instruktor;


-- 4. Sprawdzenie NULL'i i klauzula LIKE. Wypisanie klientów którzy nie podali nr telefonu 
-- i ich nazwiska kończą się na "ski".

SELECT imie, nazwisko FROM klient WHERE klient.telefon IS NULL AND nazwisko LIKE '%ski';

--5. Zapytania skorelowane i nieskorelowane + operacje arytmetyczne. 1. Wypisanie klientów poniżej 18 roku życia
--   2. Wypisanie wagi klientów równej max(waga) - min(waga) + korelacja where waga > 50 .

SELECT * FROM klient WHERE data_urodzenia IN(
SELECT data_urodzenia FROM klient WHERE data_urodzenia > '1998-05-29');

SELECT * FROM klient WHERE waga = (SELECT max(waga)-min(waga) FROM klient WHERE waga > 50);


-- 6. Zapytania negatywne. Latawce i deski które nie brały udziału w żadnym szkoleniu. 

SELECT id FROM latawiec_egz except (SELECT latawiec_id FROM zestaw);
-- SELECT * FROM latawiec_egz WHERE id NOT IN (SELECT latawiec_id from zestaw); <--- dlaczego to nie dziala ??

SELECT D.id, D.model, D.typ, D.producent FROM deska_egz D WHERE NOT EXISTS
(SELECT deska_id FROM zestaw Z WHERE Z.deska_id=D.id);


-- 7. Perspektywa. Pokazuje 10 ostatnich lekcji

CREATE TEMPORARY VIEW ostatnie_lekcje AS
SELECT select * from lekcja order by data DESC limit 10;


-- 8. Usuwanie rekordów

DELETE FROM latawiec_egz WHERE id=6;

-- 9. Update

UPDATE klient SET telefon = '999000999' WHERE telefon IS NULL;














