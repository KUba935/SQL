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
SELECT concat(imie," ",nazwisko) AS "klient" FROM klienci k INNER JOIN sprzedaz s ON s.id_klienta = k.id_klienta GROUP BY k.id_klienta HAVING AVG(s.id_klienta) < COUNT(s.id_klienta);
SELECT p.imie, p.wynagrodzenie, (p.wynagrodzenie / AVG(p.wynagrodzenie)) * 100 FROM pracownicy p INNER JOIN stanowiska s ON p.id_stanowiska = s.id_stanowiska GROUP BY p.id_stanowiska;
