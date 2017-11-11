
-- Przed usunięciem lekcji zarchiwizuj ją

create table archiwum_lekcji
(
	id		serial,
	sekretarka_id	int		NOT NULL,
	instruktor_id	int		NOT NULL,
	klient_id	int		NOT NULL,
	czas_trwania	float		NOT NULL,
	zakres		varchar(15)		,
	data		date		NOT NULL,
CONSTRAINT		archiwum_lekcji_id_pk PRIMARY KEY(id)
);


CREATE OR REPLACE FUNCTION archiwizuj_func()
	RETURNS trigger AS $$
BEGIN
	IF OLD.id IS NOT NULL
	THEN INSERT INTO archiwum_lekcji(sekretarka_id, instruktor_id, klient_id, zakres, czas_trwania, data)
		VALUES(OLD.sekretarka_id, OLD.instruktor_id, OLD.klient_id, OLD.zakres, OLD.czas_trwania, OLD.data);
		RAISE NOTICE 'Zarchiwizowano lekcje o numerze %', old.id;
	END IF;
	RETURN NULL;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER archiwizuj BEFORE DELETE
on lekcja FOR ROW
EXECUTE PROCEDURE archiwizuj_func();




-- walidacja wprowadzanych danych do tabeli lekcja

CREATE OR REPLACE FUNCTION sprawdz_dane_lekcji()
	RETURNS trigger AS $$
BEGIN
	IF new.instruktor_id NOT IN (select id from instruktor) THEN
	RAISE NOTICE 'Błąd! Upewnij się, że wprowadzasz prawidłowy numer instruktora';
	RETURN NULL;
	
	ELSEIF new.klient_id NOT IN (select id from klient) THEN
	RAISE NOTICE 'Błąd! Upewnij się, że wprowadzasz prawidłowy numer klienta';
	RETURN NULL;

	ELSEIF new.czas_trwania > 6 or new.czas_trwania <= 0 THEN
	RAISE NOTICE 'Błąd! Sprawdź czy wprowadzasz poprawny czas trwania lekcji';
	RETURN NULL;
	
	ELSE
	RETURN NEW;
	END IF;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER sprzwdz_dane BEFORE INSERT
ON lekcja for row
EXECUTE PROCEDURE sprawdz_dane_lekcji();





-- walidacja numeru telefonu przy insercie do tabeli klient

CREATE OR REPLACE FUNCTION sprawdz_numer_func()
	RETURNS trigger AS $$
BEGIN
	IF new.telefon in (select telefon from klient) THEN 
		RAISE NOTICE 'Błąd! Numer telefonu tego klienta istnieje już w bazie';
	RETURN NULL;
	END IF;
	RETURN NEW;
END
$$ LANGUAGE plpgsql;


CREATE TRIGGER numer BEFORE INSERT
ON klient FOR ROW
EXECUTE PROCEDURE sprawdz_numer_func();




-- usuniecie pianki z tabeli pianka_egz

CREATE OR REPLACE FUNCTION usun_pianke_func()
	RETURNS trigger AS $$
BEGIN
	IF old.id IS NOT NULL
	THEN DELETE FROM zestaw where pianka_id = old.id;
	RAISE NOTICE 'Usunieto egzemplarz z tabeli % o ID = %', TG_TABLE_NAME, old.id;
	END IF;
	RETURN NULL;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER usun_pianka_egz BEFORE DELETE
ON pianka_egz FOR ROW
EXECUTE PROCEDURE usun_pianke_func();  




-- usuniecie latawca z tabeli latawiec_egz

CREATE OR REPLACE FUNCTION usun_latawiec_func()
	RETURNS trigger AS $$
BEGIN
	IF old.id IS NOT NULL
	THEN DELETE FROM zestaw where latawiec_id = old.id;
	RAISE NOTICE 'Usunieto egzemplarz z tabeli % o ID = %', TG_TABLE_NAME, old.id;
	END IF;
	RETURN NULL;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER usun_latawiec_egz BEFORE DELETE
ON latawiec_egz FOR ROW
EXECUTE PROCEDURE usun_latawiec_func(); 




-- usuniecie trapezu z tabeli trapez_egz

CREATE OR REPLACE FUNCTION usun_trapez_func()
	RETURNS trigger AS $$
BEGIN
	IF old.id IS NOT NULL
	THEN DELETE FROM zestaw where trapez_id = old.id;
	RAISE NOTICE 'Usunieto egzemplarz z tabeli % o ID = %', TG_TABLE_NAME, old.id;
	END IF;
	RETURN NULL;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER usun_trapez_egz BEFORE DELETE
ON trapez_egz FOR ROW
EXECUTE PROCEDURE usun_trapez_func();



-- usuniecie deski z tabeli deska_egz

CREATE OR REPLACE FUNCTION usun_deske_func()
	RETURNS trigger AS $$
BEGIN
	IF old.id IS NOT NULL
	THEN DELETE FROM zestaw where deska_id = old.id;
	RAISE NOTICE 'Usunieto egzemplarz z tabeli % o ID = %', TG_TABLE_NAME, old.id;
	END IF;
	RETURN NULL;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER usun_deske_egz BEFORE DELETE
ON deska_egz FOR ROW
EXECUTE PROCEDURE usun_deske_func();




