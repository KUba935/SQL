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
Zad 7
SELECT s.marka, s.model, COUNT(w.id_wypozyczenia) AS liczba_wypozyczen FROM samochody s INNER JOIN wypozyczenia w ON s.id_samochodu = w.id_samochodu GROUP BY s.id_samochodu, s.marka, s.model ORDER BY liczba_wypozyczen DESC LIMIT 5;
Zad 8
SELECT k.imie, k.nazwisko, SUM(f.kwota_calosci) AS laczna_kwota FROM klienci k INNER JOIN faktury f ON k.id_klienta = f.id_faktury GROUP BY k.id_klienta, k.imie, k.nazwisko ORDER BY laczna_kwota DESC;
Zad 9
SELECT s.marka, s.model, COUNT(se.id_serwisu) AS liczba_serwisow FROM samochody s INNER JOIN serwisy se ON s.id_samochodu = se.id_samochodu GROUP BY s.id_samochodu, s.marka, s.model ORDER BY liczba_serwisow ASC;
Zad 10
