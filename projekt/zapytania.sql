SELECT imie, nazwisko ,rola FROM pracownik INNER JOIN pracownik_impreza ON pracownik.id_pracownik = pracownik_impreza.id_pracownik WHERE id_impreza =1;
SELECT * FROM pracownik WHERE pensja>=5000;
SELECT imie,nazwisko, napoje, prywatne_sesje FROM klient INNER JOIN rachunek ON klient.id_klient = rachunek.id_klient WHERE klient.id_klient = 11;
SELECT klient.imie, klient.nazwisko, SUM(rachunek.napoje+rachunek.prywatne_sesje) AS 'rachunek za wszystko' FROM klient INNER JOIN rachunek ON klient.id_
klient = rachunek.id_klient GROUP BY klient.id_klient;
SELECT pracownik.imie, pracownik.nazwisko FROM pracownik WHERE id_pracownik IN(Select id_pracownik FROM pracownik_impreza WHERE id_impreza IN(Select id_impreza FROM impreza WHERE wydatki_przygotowawcze <3500)  );
SELECT imie,nazwisko FROM klient WHERE vip ='tak';
SELECT SUM(pracownik.pensja + impreza.wydatki_przygotowawcze) AS Koszt FROM pracownik INNER JOIN pracownik_impreza ON pracownik.id_pracownik= pracownik_impreza.id_pracownik INNER JOIN impreza ON pracownik_impreza.id_impreza = impreza.id_impreza;
SELECT impreza.id_impreza, COUNT(klient.id_klient) AS 'Uczestnicy Imprezy' FROM impreza INNER JOIN klient_impreza ON impreza.id_impreza= klient_impreza.id_impreza INNER JOIN klient ON klient_impreza.id_klient= klient.id_kliUP BY impreza.id_impreza;
SELECT SUM(napoje)-SUM(prywatne_sesje) AS 'Roznica zarobku na alkoholu' FROM rachunek;
SELECT klient.imie, klient.nazwisko FROM klient  INNER JOIN rachunek ON klient.id_klient = rachunek.id_klient WHERE rachunek.napoje+ rachunek.prywatne_sesje>1000;
