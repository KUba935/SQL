Grupa A

Zad 1
SELECT imie, nazwisko, email FROM klienci WHERE nazwisko LIKE "%ski";
Zad 2
SELECT marka from samochody WHERE marka IN ("Audi", "Mercedes", "BMW") and rok_produkcji BETWEEN 2017 and 2021 and numer_rejestracyjny LIKE "%67%";

Grupa B

Zad 3
SELECT COUNT(id_wypozyczenia) AS liczba_wypozyczen, YEAR(data_wypozyczenia) AS rok FROM wypozyczenia GROUP BY YEAR(data_wypozyczenia) ORDER BY liczba_wypozyczen DESC;
Zad 4
SELECT concat(marka, " ", model) AS pełna_nazwa, cena_doba FROM samochody ORDER BY cena_doba DESC;
Zad 5


Grupa C

Zad 6
SELECT k.id_klienta, k.imie, k.nazwisko, COUNT(w.id_wypozyczenia) AS liczba_wypozyczen FROM klienci k LEFT JOIN wypozyczenia w ON k.id_klienta = w.id_klienta GROUP BY k.id_klienta, k.imie, k.nazwisko ORDER BY liczba_wypozyczen DESC;


