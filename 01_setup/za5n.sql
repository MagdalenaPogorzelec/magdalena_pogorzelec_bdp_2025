SELECT s.stanowisko, SUM(s.kwota + pr.kwota) AS suma_wynagrodzen
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja s ON w.id_pensji = s.id_pensji
JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
GROUP BY s.stanowisko;