Zadanie 1
SELECT k.tytul, g.gatunek, concat(a.imie,' ', a.nazwisko) AS autor FROM ksiazki as k INNER JOIN gatunki g ON k.id_gatunku = g.id_gatunku INNER JOIN autorzy a ON k.id_autora = a.id_autora WHERE k.id_gatunku = 4 GROUP BY tytul;
Zadanie 2
SELECT COUNT(k.id_autora) AS ilość_napisanych_książek, concat(a.imie,' ', a.nazwisko) AS autor FROM ksiazki as k INNER JOIN autorzy a ON k.id_autora = a.id_autora GROUP BY k.id_autora;
Zadanie 3
SELECT k.tytul, COUNT(w.id_wypozyczenia) ilość_wypozyczonych_książek FROM wypozyczenia w INNER JOIN ksiazki k ON w.id_ksiazki = k.id_ksiazki GROUP BY k.tytul;
Zadanie 4 
SELECT concat(c.imie,' ', c.nazwisko) czytelnik, COUNT(w.id_ksiazki) ilość_wypożyczenia_ksiązek FROM wypozyczenia w INNER JOIN czytelnicy c on w.id_czytelnika = c.id_czytelnika GROUP BY w.id_czytelnika HAVING COUNT(w.id_ksiazki) > 1;
Zadanie 5
SELECT g.gatunek, SUM(s.ilosc) FROM ksiazki k INNER JOIN gatunki g ON k.id_gatunku = g.id_gatunku INNER JOIN sprzedaz s ON k.id_ksiazki = s.id_ksiazki GROUP BY k.id_ksiazki ORDER BY SUM(s.ilosc);
Zadanie 6
SELECT imie, nazwisko , wynagrodzenie FROM pracownicy GROUP BY id_pracownika HAVING wynagrodzenie > AVG(wynagrodzenie);
Zadanie 7
SELECT ksiazki.tytul, autorzy.imie FROM ksiazki INNER JOIN autorzy ON ksiazki.id_autora = autorzy.id_autora WHERE imie LIKE 'A%';
Zadanie 8
SELECT s.ilosc, w.id_czytelnika from czytelnicy c INNER JOIN wypozyczenia w on c.id_czytelnika = w.id_czytelnika INNER JOIN sprzedaz s on C.id_czytelnika = s.id_czytelnika GROUP by c.id_czytelnika HAVING COUNT(s.ilosc) >= 1 and count(w.id_czytelnika) = 0;
​Zadanie 9
SELECT s.nazwa, count(p.id_pracownika) il_os_na_stano from pracownicy p INNER JOIN stanowiska s on p.id_stanowiska = s.id_stanowiska ORDER by count(p.id_stanowiska) DESC;
Zadanie 10
SELECT miasto FROM czytelnicy GROUP BY miasto HAVING COUNT(*) <= 1;
Zadanie 11
SELECT tytul, cena_netto FROM ksiazki WHERE cena_netto > 40.00;
Zadanie 12
