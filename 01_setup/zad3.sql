CREATE TABLE ksiegowosc.pracownicy (
    id_pracownika INT PRIMARY KEY,  
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    adres VARCHAR(80),
    telefon VARCHAR(20)
);
COMMENT ON TABLE ksiegowosc.pracownicy IS 'Tabela zawierająca dane pracowników';


CREATE TABLE ksiegowosc.godziny (
    id_godziny INT PRIMARY KEY,
    data DATE NOT NULL,
    liczba_godzin NUMERIC(5,2) NOT NULL,
    id_pracownika INT NOT NULL
);
COMMENT ON TABLE ksiegowosc.godziny IS 'Tabela rejestrująca przepracowane godziny pracowników';

ALTER TABLE ksiegowosc.godziny
ADD FOREIGN KEY (id_pracownika) 
REFERENCES ksiegowosc.pracownicy(id_pracownika) 


CREATE TABLE ksiegowosc.pensja (
    id_pensji INT PRIMARY KEY,
    stanowisko VARCHAR(50) NOT NULL,
    kwota NUMERIC(10,2) NOT NULL
);
COMMENT ON TABLE ksiegowosc.pensja IS 'Tabela zawierająca dane o pensjach na poszczególnych stanowiskach';


CREATE TABLE ksiegowosc.premia (
    id_premii INT PRIMARY KEY,
    rodzaj VARCHAR(50),
    kwota NUMERIC(10,2) 
);
COMMENT ON TABLE ksiegowosc.premia IS 'Tabela zawierająca informacje o premiach';


CREATE TABLE ksiegowosc.wynagrodzenie (
    id_wynagrodzenia INT PRIMARY KEY,
    data DATE NOT NULL,
    id_pracownika INT NOT NULL,
    id_godziny INT NOT NULL,
    id_pensji INT NOT NULL,
    id_premii INT NOT NULL
);

COMMENT ON TABLE ksiegowosc.wynagrodzenie IS 'Tabela łącząca dane o pracowniku, godzinach, pensji i premii';

ALTER TABLE ksiegowosc.wynagrodzenie
ADD FOREIGN KEY (id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika),
ADD FOREIGN KEY (id_godziny) REFERENCES ksiegowosc.godziny(id_godziny),
ADD FOREIGN KEY (id_pensji) REFERENCES ksiegowosc.pensja(id_pensji),
ADD FOREIGN KEY (id_premii) REFERENCES ksiegowosc.premia(id_premii)

