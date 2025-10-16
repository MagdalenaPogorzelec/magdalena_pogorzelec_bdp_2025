SELECT s.stanowisko, COUNT(pr.kwota>0) AS liczba_premii
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja s ON w.id_pensji = s.id_pensji
LEFT JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
GROUP BY s.stanowisko;