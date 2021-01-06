DELIMITER $$
CREATE TRIGGER usuwanie_rachunku
BEFORE  INSERT ON rachunek
FOR EACH ROW
BEGIN
IF (NEW.napoje = 0 AND NEW.prywatne_sesje=0) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT ='bledne wartosc';
end if;
end $$

DELIMITER $$
CREATE TRIGGER usuwanie_danych_klienta
AFTER DELETE ON klient
FOR EACH ROW
BEGIN
DELETE FROM rachunek WHERE rachunek.id_klient = OLD.id_klient; 
end $$

DELIMITER $$
CREATE PROCEDURE klienci()
BEGIN
SELECT 
id_klient, imie, nazwisko, vip
FROM
klient;
END$$

DELIMITER $$
CREATE FUNCTION kwota_netto(pensja INT)
RETURNS INT
BEGIN
DECLARE kwota_netto INT;
SET kwota_netto= pensja * 0.713;
RETURN kwota_netto;
END$$
