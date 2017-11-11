-- archiwizacja lekcji

delete from lekcja where id=3;
delete from lekcja where id=10;



-- walidacja insertu do tabeli lekcja

insert into lekcja(sekretarka_id, instruktor_id, klient_id, czas_trwania, zakres, data, zestaw_id)
	values('1', '555', '1', '3', 'IKO-1', '09.09.2016', '5');

insert into lekcja(sekretarka_id, instruktor_id, klient_id, czas_trwania, zakres, data, zestaw_id)
	values('1', '199', '22', '3', 'IKO-1', '09.09.2016', '5');

insert into lekcja(sekretarka_id, instruktor_id, klient_id, czas_trwania, zakres, data, zestaw_id)
	values('1', '199', '15', '7', 'IKO-1', '09.09.2016', '5');



-- walidacja numeru telefonu przy insercie

insert into klient(id, imie, nazwisko, data_urodzenia, waga, telefon, miejsce_pobytu)
	values('30', 'Kuba', 'Trudzik', '31.03.1992', '62', '600382721', 'Chałupy');

delete from pianka_egz where id=4;
delete from trapez_egz where id=2;
delete from latawiec_egz where id=10;
delete from deska_egz where id=5;









