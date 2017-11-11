--create table sprzet
--(
--    id                          serial                    ,
--   producent			varchar(30),
--   CONSTRAINT                  sprzet_id_pk PRIMARY KEY(id),
--    CONSTRAINT                  sprzet_producent_un UNIQUE(producent)
--);



create table latawiec
(
	id		serial,
	typ		varchar(10)		NOT NULL,

CONSTRAINT		latawiec_id_pk PRIMARY KEY(id),
CONSTRAINT		latawiec_typ_un UNIQUE(typ)
);

create table deska
(
	id		int			NOT NULL,
	typ		varchar(15)		NOT NULL,

CONSTRAINT		deska_id_pk PRIMARY KEY(id),
CONSTRAINT		deska_typ_un UNIQUE(typ)
);

create table trapez
(
	id		serial,
	typ		varchar(15)		NOT NULL,

CONSTRAINT		trapez_id_pk PRIMARY KEY(id),
CONSTRAINT		trapez_typ_un UNIQUE(typ)
);

create table pianka
(
	id		serial,
	rodzaj		varchar(10)		NOT NULL,

CONSTRAINT		pianka_id_pk PRIMARY KEY(id),
CONSTRAINT		pianka_rodzaj_un UNIQUE(rodzaj)
);

create table pompka
(
	id		int		NOT NULL,
	producent	varchar(30)	NOT NULL,

CONSTRAINT		pompka_id_pk PRIMARY KEY(id)
);


create table latawiec_egz
(
	id		int			NOT NULL,
	rozmiar		int			NOT NULL,
	model		varchar(20)		NOT NULL,
	typ		varchar(20)		NOT NULL,
	producent	varchar(30)		NOT NULL,

CONSTRAINT		latawiec_egz_id_pk PRIMARY KEY(id),
CONSTRAINT		latawiec_fk FOREIGN KEY(typ)
			REFERENCES latawiec(typ) ON DELETE RESTRICT
);


create table deska_egz
(
	id		int		NOT NULL,
	model		varchar(15)	NOT NULL,
	dlugosc		int		NOT NULL,
	szerokosc	int			,
	typ		varchar(15)	NOT NULL,
	producent	varchar(30)	NOT NULL,

CONSTRAINT 		deska_egz_id_pk	PRIMARY KEY(id),
CONSTRAINT		deska_fk FOREIGN KEY(typ)
			REFERENCES deska(typ) ON DELETE RESTRICT	
);


create table trapez_egz
(
	id		int		NOT NULL,
	rozmiar		char(3)		NOT NULL,
	typ		varchar(15)	NOT NULL,
	producent	varchar(30)	NOT NULL,

CONSTRAINT 		trapez_egz_id_pk PRIMARY KEY(id),
CONSTRAINT		trapez_fk FOREIGN KEY(typ)
			REFERENCES trapez(typ) ON DELETE RESTRICT
);


create table pianka_egz
(
	id		int		NOT NULL,
	rozmiar		char(3)		NOT NULL,
	grubosc		varchar(10)	NOT NULL,
	rodzaj		varchar(10)	NOT NULL,
	producent	varchar(30)	NOT NULL,

CONSTRAINT 		pianka_egz_id_pk PRIMARY KEY(id),
CONSTRAINT		pianka_fk FOREIGN KEY(rodzaj)
			REFERENCES pianka(rodzaj) ON DELETE RESTRICT
);


create table sekretarka
(
	id		int		NOT NULL,
	imie		varchar(20)	NOT NULL,
	nazwisko	varchar(30)	NOT NULL,
CONSTRAINT		sekretarka_id_pk PRIMARY KEY(id)
);

create table uprawnienia
(
	id		serial,
	organizacja	varchar(30)	NOT NULL,

CONSTRAINT	uprawnienia_id_pk PRIMARY KEY(id),
CONSTRAINT	uprawnienia_organizacja_un UNIQUE(organizacja)
);

create table instruktor
(
	id		int		NOT NULL,
	imie		varchar(20)	NOT NULL,
	nazwisko	varchar(30)	NOT NULL,
	data_urodzenia	date		NOT NULL,
	waga		int		NOT NULL,
	uprawnienia	varchar(30),
	telefon		int,
	
CONSTRAINT	instruktor_id_pk PRIMARY KEY(id),
CONSTRAINT	uprawnienia_fk FOREIGN KEY(uprawnienia)
		REFERENCES uprawnienia(organizacja)
);


create table klient
(
	id		int		NOT NULL,
	imie		varchar(20)	NOT NULL,
	nazwisko 	varchar(20)	NOT NULL,
	data_urodzenia	date		NOT NULL,
	waga		int,
	telefon		int,
	miejsce_pobytu	varchar(30),

CONSTRAINT	klient_id_pk PRIMARY KEY(id)	
);


create table zestaw
(
	id		serial,
	latawiec_id	int,
	deska_id	int,
	trapez_id	int,
	pianka_id	int,
	pompka_id	int,
	lekcja_id	int,

CONSTRAINT		zestaw_id_pk PRIMARY KEY(id),
CONSTRAINT		latawiec_egz_fk FOREIGN KEY(latawiec_id)
			REFERENCES latawiec_egz(id),
CONSTRAINT		deska_egz_fk FOREIGN KEY(deska_id)
			REFERENCES deska_egz(id),
CONSTRAINT		trapez_egz_fk FOREIGN KEY(trapez_id)
			REFERENCES trapez_egz(id),
CONSTRAINT		pianka_egz_fk FOREIGN KEY(pianka_id)
			REFERENCES pianka_egz(id),
CONSTRAINT		pompka_fk FOREIGN KEY(pompka_id)
			REFERENCES pompka(id)

);



create table lekcja
(
	id		serial,
	sekretarka_id	int		NOT NULL,
	instruktor_id	int		NOT NULL,
	klient_id	int		NOT NULL,
	czas_trwania	float		NOT NULL,
	zakres		varchar(15)		,
	data		date		NOT NULL,
	zestaw_id	int,
	
CONSTRAINT	lekcja_id_pk PRIMARY KEY(id),
CONSTRAINT	sekretarka_fk FOREIGN KEY(sekretarka_id)
		REFERENCES sekretarka(id)ON DELETE SET NULL,
CONSTRAINT	instruktor_fk FOREIGN KEY(instruktor_id)
		REFERENCES instruktor(id) ON DELETE SET NULL,
CONSTRAINT	klient_fk FOREIGN KEY(klient_id)
		REFERENCES klient(id) ON DELETE SET NULL,
CONSTRAINT	zestaw_fk FOREIGN KEY(zestaw_id)
		REFERENCES zestaw(id) ON DELETE SET NULL

);



--CREATE VIEW ostatnie_lekcje AS
--SELECT select * from lekcja order by data DESC limit 10;


