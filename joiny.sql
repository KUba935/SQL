Podstawowe
SELECT AVG(Cena) as sr_cena FROM ksiazki
SELECT COUNT(id_ksiazki) AS ilosc_ksiazek FROM ksiazki;
SELECT tytul, max(Cena) AS najtansza_ksiazka FROM ksiazki;
SELECT tytul, min(Cena) AS najtansza_ksiazka FROM ksiazki;
SELECT SUM(Cena) AS Cena_wszystkich_ksiazek FROM ksiazki;

SELECT concat(Imie ," ", Nazwisko) AS imie_i_nazwisko FROM klienci;
SELECT lower(wydawnictwo) FROM wydawnictwa;
SELECT length(tytul) FROM ksiazki;
SELECT substring(imie, 1, 3) AS trzy_pierwsze_litery FROM klienci;
SELECT UPPER(tytul) FROM ksiazki;
Średnio zaawansowane
SELECT round(AVG(Cena), 2) FROM ksiazki;
SELECT max(Cena) - min(Cena) AS roznica_cen FROM ksiazki;
SELECT * FROM ksiazki GROUP BY id_ksiazki HAVING AVG(ksiazki.Cena) < ksiazki.Cena;
SELECT (max(wynagrodzenie) - min(wynagrodzenie)) AS roznica_wynagrodzenia FROM pracownicy;
SELECT sum(wynagrodzenie), AVG(wynagrodzenie) FROM pracownicy GROUP BY id_stanowiska;

SELECT concat(substring(imie, 1, 1), substring(nazwisko, 1, 3)) FROM klienci;
SELECT REPLACE(tytul, " ", "_") FROM ksiazki;
SELECT tytul FROM ksiazki WHERE tytul LIKE '%a%';
SELECT a.tytul, b.gatunek FROM ksiazki a INNER JOIN gatunki b on a.id_gatunku = b.id_gatunku
SELECT substring(kod_pocztowy, 1, 2) FROM klienci;
Zaawansowane
SELECT round((Cena * SUM(Cena)) / 100, 2) AS udzial_w_proc FROM ksiazki GROUP BY id_ksiazki;
