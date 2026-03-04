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