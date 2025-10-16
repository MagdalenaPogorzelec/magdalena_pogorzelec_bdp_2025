INSERT INTO ksiegowosc.pracownicy (id_pracownika, imie, nazwisko, adres, telefon)
VALUES
('1','Mateusz','Wisniowski', 'ul. Grunwaldzka 5, Przemysl', '777 555 444'),
('2','Jarek','Kowalski', 'ul. Polna 34, Szczecin', '283 172 533'),
('3','Anna','Szczepanska', 'ul. Szczepanska 11, Rzeszow', '934 879 298'),
('4','Krzysztof','Ogonowski', 'ul. Słoneczna 32, Warszawa', '019 271 892'),
('5','Jola','Nowak', 'ul. Lipowa 4, Wroclaw', '387 492 384'),
('6','Jacek','Forys', 'ul. Ogrodowa 43, Katowice', '387 482 368'),
('7','Irena','Wójcik', 'ul. Florianska 2, Krakow', '856 648 934'),
('8','Marzena','Lewandowska', 'ul. 3 Maja 67, Przemysl', '582 638 346'),
('9','Zuzanna','Kaminska', 'ul. Jagiellonska 55, Lublin', '879 423 742'),
('10','Klaudia','Kowalska', 'ul. Łączna 9, Poznań', '469 187 129');

INSERT INTO ksiegowosc.godziny (id_godziny, data, liczba_godzin, id_pracownika)
VALUES
(1, '2023-11-01', 120, 4),
(2, '2023-11-02', 50, 1),
(3, '2023-11-03', 70.5, 3),
(4, '2023-11-04', 40.5, 5),
(5, '2023-11-05', 200, 2),
(6, '2023-11-06', 170, 7),
(7, '2023-11-07', 50, 6),
(8, '2023-11-06', 90, 8),
(9, '2023-11-02', 165, 9),
(10, '2023-11-03', 80, 10);

INSERT INTO ksiegowosc.pensja (id_pensji, stanowisko, kwota)
VALUES
(1, 'kierownik', 4000),
(2, 'pracownik', 3500),
(3, 'dyrektor generalny', 5000),
(4, 'asystent', 900),
(5, 'pracownik', 3000),
(6, 'pracownik', 3000),
(7, 'asystent', 800),
(8, 'pracownik', 3500),
(9, 'asystent', 2500),
(10, 'pracownik', 3000);

INSERT INTO ksiegowosc.premia (id_premii, rodzaj, kwota)
VALUES
(1, 'roczna', 3000),
(2, 'miesięczna', 500),
(3, 'miesięczna', 500),
(4, 'miesięczna', NULL),
(5, 'za nadgodziny', NULL),
(6, 'roczna', 2500),
(7, 'długi staż', 5000),
(8, 'za nadgodziny', NULL),
(9, 'roczna', 4000),
(10, 'miesięczna', NULL);

INSERT INTO ksiegowosc.wynagrodzenie(id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii)
VALUES 
(1, '2023-11-01', 4, 1,10, 1),
(2, '2023-11-02', 1, 2,5, 2),
(3, '2023-11-03', 3, 3,7, 3),
(4, '2023-11-04', 5, 4,6, 4),
(5, '2023-11-05', 2, 5,8, 5),
(6, '2023-11-06', 7, 6,9, 6),
(7, '2023-11-07', 6, 7,3, 7),
(8, '2023-11-06', 8, 8,1, 8),
(9, '2023-11-02', 9, 9,2, 9),
(10, '2023-11-03', 10, 10,4, 10);
