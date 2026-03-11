-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Lis 2020, 20:51
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `biblioteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

CREATE TABLE `autorzy` (
  `id_autora` int(11) NOT NULL,
  `imie` varchar(35) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(35) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `autorzy`
--

INSERT INTO `autorzy` (`id_autora`, `imie`, `nazwisko`) VALUES
(1, 'Jon', 'Duckett'),
(2, 'Sarah J.', 'Mass'),
(3, 'Paula', 'Hawkins'),
(4, 'Dan', 'Brown'),
(5, 'Harlan', 'Coben'),
(6, 'Ryszard', 'Kapuscinski'),
(7, 'Frank', 'Miller'),
(8, 'Andrzej', 'Burkiet'),
(9, 'Diana', 'Gabaldon'),
(10, 'Jo', 'Nesbo');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czytelnicy`
--

CREATE TABLE `czytelnicy` (
  `id_czytelnika` int(11) NOT NULL,
  `imie` varchar(35) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(35) COLLATE utf8_polish_ci DEFAULT NULL,
  `miasto` varchar(35) COLLATE utf8_polish_ci DEFAULT NULL,
  `kod_pocztowy` varchar(7) COLLATE utf8_polish_ci DEFAULT NULL,
  `ulica` varchar(35) COLLATE utf8_polish_ci DEFAULT NULL,
  `telefon` varchar(12) COLLATE utf8_polish_ci DEFAULT NULL,
  `login` varchar(35) COLLATE utf8_polish_ci DEFAULT NULL,
  `email` varchar(35) COLLATE utf8_polish_ci DEFAULT NULL,
  `haslo` varchar(35) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `czytelnicy`
--

INSERT INTO `czytelnicy` (`id_czytelnika`, `imie`, `nazwisko`, `miasto`, `kod_pocztowy`, `ulica`, `telefon`, `login`, `email`, `haslo`) VALUES
(1, 'Lukasz', 'Lewandowski', 'Poznan', '68-300', 'Jarzebinowa 7', '675432675', 'llewandowski', 'llewandowski@mail.pl', 'haslo'),
(2, 'Jan', 'Nowak', 'Katowice', NULL, NULL, NULL, 'jnowak', 'xyz@xyz.pl', 'haslo'),
(3, 'Maciej', 'Wojcik', 'Bydgoszcz', NULL, NULL, NULL, 'mwojcik', 'haha@ha.com', 'haslo'),
(4, 'Agnieszka', 'Jankowska', 'Lublin', NULL, NULL, NULL, 'ajankowska', 'opop@op.pl', 'haslo'),
(5, 'Tomasz', 'Mazur', 'Jelenia Gora', NULL, NULL, NULL, 'tmazur', 'qqqq@qw.pl', 'haslo'),
(6, 'Michal', 'Zielinski', 'Krakow', NULL, NULL, NULL, 'mzielinski', 'ja@qw.com', 'haslo'),
(7, 'Artur', 'Rutkowski', 'Kielce', NULL, NULL, NULL, 'arutkowski', 'tt@pl.pl', 'haslo'),
(8, 'Mateusz', 'Skorupa', 'Gdansk', NULL, NULL, NULL, 'mskorupa', 'jjfd@ff.pl', 'haslo'),
(9, 'Jerzy', 'Rutkowski', 'Rybnik', NULL, NULL, NULL, 'jrutkowski', 'rere@pl.pl', 'haslo'),
(11, 'Anna', 'Kwiatowa', 'Lublin', '20-100', 'Poziomkowa 1', '12345643', 'akwiatowa', 'akwiatowa@mail.pl', 'haslo'),
(12, 'Maria', 'Wspaniala', 'Poznan', '65-343', 'Owocowa 49', '875493243', 'mwspaniala', 'mwspaniala@mail.pl', 'haslo'),
(13, 'Jan', 'Brzozowski', 'Poznan', '60-225', 'Jasna 14', '98765456', 'jbrzozowski', 'jbrzozowski@mail.pl', 'haslo'),
(14, 'Adam', 'Lipski', 'Lublin', '20-400', 'Sloneczna 3', '32343452', 'alipski', 'alipski@mail.pl', 'haslo');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatunki`
--

CREATE TABLE `gatunki` (
  `id_gatunku` int(11) NOT NULL,
  `gatunek` varchar(35) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `gatunki`
--

INSERT INTO `gatunki` (`id_gatunku`, `gatunek`) VALUES
(1, 'Powiesc'),
(2, 'Kryminal'),
(3, 'Sensacja'),
(4, 'Fantastyka'),
(5, 'Poradniki'),
(6, 'Thriller'),
(7, 'Edukacyjne'),
(8, 'Komiks'),
(9, 'Poezja'),
(10, 'Dramat');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `id_ksiazki` int(11) NOT NULL,
  `tytul` varchar(35) COLLATE utf8_polish_ci DEFAULT NULL,
  `id_autora` int(11) DEFAULT NULL,
  `id_wydawnictwa` int(11) DEFAULT NULL,
  `id_gatunku` int(11) DEFAULT NULL,
  `cena_netto` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `ksiazki`
--

INSERT INTO `ksiazki` (`id_ksiazki`, `tytul`, `id_autora`, `id_wydawnictwa`, `id_gatunku`, `cena_netto`) VALUES
(1, 'HTML i CSS. Zaprojektuj i zbuduj.', 1, 1, 7, '70.00'),
(2, 'Szklany tron. Tom 1.', 2, 2, 4, '35.99'),
(3, 'Zapisane w wodzie', 3, 3, 3, '40.00'),
(4, 'Anioly i demony', 4, 4, 3, '50.00'),
(5, 'Nieznajomy', 5, 5, 3, '19.00'),
(6, 'Bez sladu.', 5, 5, 3, '25.00'),
(7, 'Wiersze zebrane.', 6, 6, 9, '29.90'),
(8, 'Mroczny rycerz kontratakuje', 7, 7, 8, '40.00'),
(9, 'Mysl!', 8, 8, 5, '50.00'),
(10, 'obca', 9, 9, 4, '15.00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id_pracownika` int(11) NOT NULL,
  `imie` varchar(35) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(35) COLLATE utf8_polish_ci DEFAULT NULL,
  `id_stanowiska` int(11) DEFAULT NULL,
  `wynagrodzenie` float(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id_pracownika`, `imie`, `nazwisko`, `id_stanowiska`, `wynagrodzenie`) VALUES
(1, 'Jan', 'Nowak', 2, 5000.00),
(2, 'Jan', 'Kowalski', 3, 3000.00),
(3, 'Anna', 'Szczesliwa', 1, 10000.00),
(4, 'Joanna', 'Kowalska', 3, 3500.00),
(5, 'Marek', 'Wojcik', 4, 3000.00),
(6, 'Katarzyna', 'Piekna', 6, 4000.00),
(7, 'Adam', 'Nowak', 3, 3000.00),
(8, 'Agnieszka', 'Bystra', 6, 5000.00),
(9, 'Stanislaw', 'Pogodny', 3, 3500.00);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sprzedaz`
--

CREATE TABLE `sprzedaz` (
  `id_sprzedaz` int(11) NOT NULL,
  `id_czytelnika` int(11) NOT NULL,
  `id_ksiazki` int(11) NOT NULL,
  `ilosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `sprzedaz`
--

INSERT INTO `sprzedaz` (`id_sprzedaz`, `id_czytelnika`, `id_ksiazki`, `ilosc`) VALUES
(1, 5, 4, 1),
(2, 4, 8, 2),
(4, 2, 6, 1),
(5, 5, 10, 1),
(6, 1, 1, 1),
(7, 2, 1, 1),
(8, 10, 2, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanowiska`
--

CREATE TABLE `stanowiska` (
  `id_stanowiska` int(11) NOT NULL,
  `nazwa` varchar(35) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `stanowiska`
--

INSERT INTO `stanowiska` (`id_stanowiska`, `nazwa`) VALUES
(1, 'Dyrektor'),
(2, 'Kierownik'),
(3, 'Bibliotekarz'),
(4, 'Sprzatacz'),
(5, 'Stazysta'),
(6, 'Ksiegowy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wydawnictwa`
--

CREATE TABLE `wydawnictwa` (
  `id_wydawnictwa` int(11) NOT NULL,
  `wydawnictwo` varchar(35) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `wydawnictwa`
--

INSERT INTO `wydawnictwa` (`id_wydawnictwa`, `wydawnictwo`) VALUES
(1, 'Helion'),
(2, 'Uroboros'),
(3, 'Swiat Ksiazki'),
(4, 'Sonia Draga'),
(5, 'Albatros'),
(6, 'UMCS'),
(7, 'Egmont Polska Sp. z o. o.'),
(8, 'Poligraf'),
(9, 'Znak'),
(10, 'Zysk i s-ka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `id_wypozyczenia` int(11) NOT NULL,
  `id_ksiazki` int(11) DEFAULT NULL,
  `id_czytelnika` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `wypozyczenia`
--

INSERT INTO `wypozyczenia` (`id_wypozyczenia`, `id_ksiazki`, `id_czytelnika`) VALUES
(1, 4, 1),
(2, 3, 2),
(3, 1, 5),
(4, 3, 6),
(5, 7, 2),
(6, 4, 1),
(7, 7, 2),
(8, 9, 5),
(9, 7, 2),
(10, 9, 2),
(11, 10, 1),
(12, 3, 3),
(13, 9, 3),
(14, 8, 4),
(15, 7, 3),
(16, 6, 12),
(17, 10, 14),
(18, 1, 8),
(19, 7, 12),
(20, 1, 13),
(21, 8, 1),
(22, 9, 14),
(23, 8, 12),
(24, 4, 6),
(25, 7, 14),
(26, 10, 12),
(27, 8, 10);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`id_autora`);

--
-- Indeksy dla tabeli `czytelnicy`
--
ALTER TABLE `czytelnicy`
  ADD PRIMARY KEY (`id_czytelnika`);

--
-- Indeksy dla tabeli `gatunki`
--
ALTER TABLE `gatunki`
  ADD PRIMARY KEY (`id_gatunku`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id_ksiazki`),
  ADD KEY `Autor_fk` (`id_autora`),
  ADD KEY `Gatunek_fk` (`id_gatunku`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id_pracownika`);

--
-- Indeksy dla tabeli `sprzedaz`
--
ALTER TABLE `sprzedaz`
  ADD PRIMARY KEY (`id_sprzedaz`);

--
-- Indeksy dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  ADD PRIMARY KEY (`id_stanowiska`);

--
-- Indeksy dla tabeli `wydawnictwa`
--
ALTER TABLE `wydawnictwa`
  ADD PRIMARY KEY (`id_wydawnictwa`);

--
-- Indeksy dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`id_wypozyczenia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `autorzy`
  MODIFY `id_autora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `czytelnicy`
  MODIFY `id_czytelnika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `gatunki`
  MODIFY `id_gatunku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `ksiazki`
  MODIFY `id_ksiazki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `pracownicy`
  MODIFY `id_pracownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `sprzedaz`
  MODIFY `id_sprzedaz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `stanowiska`
  MODIFY `id_stanowiska` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `wydawnictwa`
  MODIFY `id_wydawnictwa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `wypozyczenia`
  MODIFY `id_wypozyczenia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD CONSTRAINT `Autor_fk` FOREIGN KEY (`id_autora`) REFERENCES `autorzy` (`id_autora`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
