SELECT 
    AVG(kwota) AS srednia, 
    MIN(kwota) AS minimalna, 
    MAX(kwota) AS maksymalna
FROM ksiegowosc.pensja
WHERE stanowisko = 'kierownik';
