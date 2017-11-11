SET client_encoding='utf-8';

--insert into sprzet(producent)
	--values ('Nobile'),
		--('Slingshot'),
		--('Airush'),
		--('North'),
		--('Cabrinha'),
		--('SU-2'),
		--('Goodboards'),
		--('Mystic'),
		--('ION'),
		--('Manera'),
		--('Naish'),
		--('Dakine'),
		--('NP'),
		--('Gul');

insert into latawiec(typ)
	values ('c-shape'),
		('delta'),
		('bow');

insert into latawiec_egz(id, rozmiar, model, typ, producent)
	values ('1','5','rally', 'delta', 'Slingshot'),
		('2','7','rally', 'delta', 'Slingshot'),
		('3','9','fuel', 'c-shape', 'Slingshot'),
		('4','12','fuel', 'c-shape', 'Slingshot'),
		('5','9','rpm', 'c-shape', 'Slingshot'),
		('6','14','turbine', 'bow', 'Slingshot'),
		('7','14','turbine', 'bow', 'Slingshot'),
		('8','10','turbine', 'bow', 'Slingshot'),
		('9','10','apollo', 'bow', 'Cabrinha'),
		('10','7','radar', 'delta', 'Cabrinha'),
		('11','9','drifter', 'delta', 'Cabrinha'),
		('12','10','drifter', 'delta', 'Cabrinha'),
		('13','7','apollo', 'bow', 'Cabrinha'),
		('14','13','x-ray', 'c-shape', 'Cabrinha'),
		('15','12','fx', 'c-shape', 'Cabrinha'),
		('16','7','fx', 'c-shape', 'Cabrinha'),
		('17','14','switchblade', 'delta', 'Cabrinha'),
		('18','10','religion', 'bow', 'Cabrinha'),
		('19','7','vision', 'bow', 'Cabrinha'),
		('20','9','fifty', 'c-shape', 'Nobile'),
		('21','12','fifty', 'c-shape', 'Nobile'),
		('22','12','fifty', 'c-shape', 'Nobile'),
		('23','17','mr. big kite', 'bow', 'Nobile'),
		('24','10','no.1', 'delta', 'Nobile'),
		('25','7','T5', 'delta', 'Nobile'),
		('26','10','T5', 'delta', 'Nobile'),
		('27','12','T5', 'delta', 'Nobile'),
		('28','8','DNA', 'bow', 'Airush'),
		('29','9','DNA', 'bow', 'Airush'),
		('30','12','diamond', 'bow', 'Airush'),
		('31','14','DNA', 'bow', 'Airush'),
		('32','7','lithium', 'delta', 'Airush'),
		('33','10','lithium', 'delta', 'Airush'),
		('34','10','lithium', 'delta', 'Airush'),
		('35','14','union', 'delta', 'Airush'),
		('36','17','lithium', 'delta', 'Airush'),
		('37','9','wave', 'c-shape', 'Airush'),
		('38','7','razor', 'c-shape', 'Airush'),
		('39','7','razor', 'c-shape', 'Airush'),
		('40','12','razor', 'c-shape', 'Airush'),
		('41','13','razor', 'c-shape', 'Airush'),
		('42','10','rebel', 'delta', 'North'),
		('43','12','rebel', 'delta', 'North'),
		('44','14','rebel', 'delta', 'North'),
		('45','14','rebel', 'delta', 'North'),
		('46','10','vegas', 'c-shape', 'North'),
		('47','8','vegas', 'c-shape', 'North'),
		('48','7','dice', 'c-shape', 'North'),
		('49','14','juice', 'bow', 'North'),
		('50','17','juice', 'bow', 'North'),
		('51','9','ace', 'bow', 'North');

insert into deska(id, typ)
	values('1', 'twintip'),
		('2', 'wave'),
		('3', 'skimboard');

insert into deska_egz(id, model, dlugosc, szerokosc, typ, producent)
	values('1', 'rider', '129', '38', 'twintip', 'SU-2'),
		('2', 'rider', '130', '39', 'twintip', 'SU-2'),
		('3', 'roller', '130', '39', 'twintip', 'SU-2'),
		('4', 'gambler', '134', '40', 'twintip', 'North'),
		('5', 'fiction', '138', '42', 'twintip', 'North'),
		('6', 'jet', '138', '41', 'twintip', 'Nobile'),
		('7', 'x-series', '134', '38', 'twintip', 'Nobile'),
		('8', '50-fifty', '138', '40', 'twintip', 'Nobile'),
		('9', 'infinity', '150', NULL, 'wave', 'Nobile'),
		('10', 'dippy', '124', '45', 'skimboard', 'Nobile'),
		('11', 'carpet', '151', '45', 'twintip', 'Nobile'),
		('12', 'bigfoot', '145', '45', 'twintip', 'SU-2'),
		('13', 'prorider', '144', '43', 'twintip', 'SU-2'),
		('14', 'crossbay', '133', '40', 'twintip', 'Goodboards'),
		('15', 'crossbay', '141', '42', 'twintip', 'Goodboards'),
		('16', 'amnesia', '132', '40', 'twintip', 'Goodboards'),
		('17', 'amnesia', '136', '41', 'twintip', 'Goodboards'),
		('18', 'amnesia', '136', '41', 'twintip', 'Goodboards'),
		('19', 'capo', '140', '42', 'twintip', 'Goodboards'),
		('20', 'ammerdoor', '145', '45', 'twintip', 'Goodboards'),
		('21', 'tyrant', '159', '44', 'wave', 'Slingshot'),
		('22', 't-rex', '160', '44', 'wave', 'Slingshot'),
		('23', 'screamer', '157', '43', 'wave', 'Slingshot');


insert into trapez(typ)
	values('lędźwiowy'),
		('biodrowy');

insert into trapez_egz(id, rozmiar, typ, producent)
	values('1', 'S', 'lędźwiowy', 'Mystic'),
		('2', 'S', 'lędźwiowy', 'Mystic'), 
		('3', 'S', 'biodrowy', 'Mystic'),
		('4', 'S', 'lędźwiowy', 'ION'),
		('5', 'M', 'lędźwiowy', 'ION'),
		('6', 'M', 'lędźwiowy', 'ION'),
		('7', 'M', 'biodrowy', 'Manera'),
		('8', 'M', 'biodrowy', 'Manera'),
		('9', 'M', 'lędźwiowy', 'Manera'),
		('10', 'L', 'lędźwiowy', 'Mystic'),
		('11', 'L', 'lędźwiowy', 'Naish'),
		('12', 'L', 'lędźwiowy', 'ION'),
		('13', 'XL', 'biodrowy', 'ION'),
		('14', 'XL', 'lędźwiowy', 'Manera'),
		('15', 'XL', 'lędźwiowy', 'Mystic'),
		('16', 'XXL', 'biodrowy', 'Naish'),
		('17', 'XXL', 'lędźwiowy', 'Dakine'),
		('18', 'XXL', 'lędźwiowy', 'Dakine');


insert into pianka(rodzaj)
	values('męska'),
		('damska');

insert into pianka_egz(id, rozmiar, grubosc, rodzaj, producent)
	values('1', 'S', '3', 'męska', 'Gul'),
		('2', 'S', '4/3', 'damska', 'Gul'),
		('3', 'S', '5/4/3', 'męska', 'Gul'),
		('4', 'M', '5/4/3', 'damska', 'Mystic'),
		('5', 'M', '4/3', 'damska', 'Mystic'),
		('6', 'M', '4/3', 'męska', 'Mystic'),
		('7', 'M', '3', 'męska', 'Mystic'),
		('8', 'L', '3', 'damska', 'ION'),
		('9', 'L', '3', 'damska', 'ION'),
		('10', 'L', '3/2', 'męska', 'ION'),
		('11', 'L', '3/2', 'męska', 'ION'),
		('12', 'L', '6/4/2', 'męska', 'Gul'),
		('13', 'XL', '5/4/3', 'damska', 'Gul'),
		('14', 'XL', '3', 'męska', 'Gul'),
		('15', 'XL', '4', 'męska', 'Gul'),
		('16', 'XXL', '4', 'damska', 'NP'),
		('17', 'XXL', '5/4', 'damska', 'NP'),
		('18', 'XXL', '4/3/2', 'męska', 'NP'),
		('19', 'XXL', '3/2', 'męska', 'NP'),
		('20', 'XL', '5', 'damska', 'Gul'),
		('21', 'M', '4', 'męska', 'Gul'),
		('22', 'S', '3', 'damska', 'Gul');


insert into pompka(id, producent)
	values('1', 'Airush'),
		('2', 'Airush'),
		('3', 'Cabrinha'),
		('4', 'Cabrinha'),
		('5', 'Nobile'),
		('6', 'Nobile'),
		('7', 'Nobile'),
		('8', 'North'),
		('9', 'North'),
		('10', 'Slingshot'),
		('11', 'Slingshot'),
		('12', 'Slingshot');




insert into sekretarka(id, imie, nazwisko)
	values('1', 'Magdalena', 'Górny'),
		('2', 'Paulina', 'Dolny');


insert into uprawnienia(organizacja)
	values('IKO'),
		('PZKite'),
		('POIK');


insert into instruktor(ID,imie,nazwisko,data_urodzenia,waga,uprawnienia,telefon)
	values('328','Dawid','Kusznierewicz','06.02.1990','85','IKO',NULL);
insert into instruktor(ID,imie,nazwisko,data_urodzenia,waga,uprawnienia,telefon)
	values('273','Ada','Szarska','30.12.1997','49','IKO','632211853');
insert into instruktor(ID,imie,nazwisko,data_urodzenia,waga,uprawnienia,telefon)
	values('521','Mikołaj','Nowak','14.10.1989,','98','PZKite','508921298');
insert into instruktor(ID,imie,nazwisko,data_urodzenia,waga,uprawnienia,telefon)
	values('254','Sławomir','Staszewski','25.05.1993','65',NULL,'731542389');
insert into instruktor(ID,imie,nazwisko,data_urodzenia,waga,uprawnienia,telefon)
	values('758','Karolina','Słodycza','21.12.1994','58','POIK',NULL);
insert into instruktor(ID,imie,nazwisko,data_urodzenia,waga,uprawnienia,telefon)
	values('149','Mikołaj','Bieńkowski','15.04.1991','78','PZKite','606666891');
insert into instruktor(ID,imie,nazwisko,data_urodzenia,waga,uprawnienia,telefon)
	values('199','Dawid','Mrozek','9.03.1993','69','POIK','663554221');
insert into instruktor(ID,imie,nazwisko,data_urodzenia,waga,uprawnienia,telefon)
	values('487','Michał','Stachurski','24.01.1998','83',NULL,'503339939');

insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('1','Zbigniew','Nowak','06.11.1972','78','600382721','Albatros');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('2','Alicja','Kowalska','05.01.1990','56','521387421','Jastarnia');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('3','Beata','Kowalska','27.11.1967',NULL,'728492533','Jastarnia');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('4','Maciej','Kowalski','15.03.1965','93','702502302', NULL);
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('5','Eliza','Marcinkiewicz','30.06.1998','48','602305469','Kuznica');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('6','Eliza','Marcinkiewicz','14.05.1983','56','823503469','Kaper');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('7','Andrzej','Chodakiewicz','8.12.1995','73','608403321','Chalupy6');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('8','Klaudia','Woźniak','24.02.2004','45','603389421','Albatros');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('9','Robert','Woźniak','12.07.1976','89','502203869',NULL);
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('10','Jakub','Bakiewicz','13.03.1993',NULL,'845321113','Jurata');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('11','Paweł','Urbański','21.08.1989','101','503502500','Wladyslawowo');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('12','Paweł','Kryński','18.12.1994','108',NULL,'Hel');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('13','Paula','Pyrzanowska','03.01.1984','56','608632533','Kaper');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('14','Andrzej','Rynkiewicz','11.10.1973','73','605632649','Chalupy6');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('15','Beata','Nowacka','11.01.1999','54','721533444','Male_Morze');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('16','Beata','Leonarczyk','28.04.2000','48',NULL,NULL);
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('17','Paulina','Wojtalewicz','9.09.1989','58','603321555','Chalupy6');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('18','Sebastian','Sandomierski','31.05.1996','78','602298509','Polaris');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('19','Jakub','Świec','29.03.1968','89',NULL,'Ekolaguna');
insert into klient(id,imie,nazwisko,data_urodzenia,waga,telefon,miejsce_pobytu)
	values('20','Oliwer','Januszewski','05.09.1994','63','608509331','Kuznica');

insert into zestaw(latawiec_id, deska_id, trapez_id, pianka_id, pompka_id, lekcja_id)
	values('4', '3', NULL, NULL, '3', '1'),
		('2', NULL, '5', '2', '1', '1'),
		('5', NULL, '2', '8', '3', '1'),
		('20', '7', '3', '15', '3', '1'),
		('25', NULL, '15', '18', '4', '1'),
		('17', '3', '16', '14', '5', '1'),
		('19', '5', '4', '13', '2', '1'),
		('20', NULL, '11', '5', '6', '1'),
		('44', '4', '14', '7', '7', '1'),
		('41', NULL, '18', '1', '4', '1'),
		('13', NULL, '15', '2', '3', '1'),
		('8', '2', '1', '9', '2', '1'),
		('2', '8', '3', '10', '1', '1'),
		('33', NULL, '8', '15', '1', '1'),
		('50', NULL, '5', '16', '9', '1'),
		('43', '9', '8', '13', '1', '1'),
		('49', NULL, '10', '18', '10', '1'),
		('32', NULL, '12', '1', '7', '1'),
		('37', '10', '17', '4', '11', '1'),
		('38', '13', '3', '4', '4', '1'),
		('12', '12', NULL, NULL, '6', '1'),
		('11', '15', '7', '8', '7', '1'),
		('5', NULL, '1', '6', '4', '1'),
		('20', NULL, '1', '17', '2', '1'),
		('9', NULL, '13', '3', '4', '1'),
		('4', NULL, '4', '10', '2', '1'),
		('5', NULL, '3', '2', '5', '1'),
		('24', '16', '5', '1', '6', '1'),
		('24', NULL, '10', '1', '1', '1'),
		('51', NULL, '15', '6', '9', '1'),
		('50', '20', '9', '8', '10', '1'),
		('19', '19', '17', '10', '1', '1'),
		('16', '14', '12', '13', '1', '1'),
		('29', '9', '7', '13', '1', '1'),
		('31', NULL, '8', '15', '5', '1'),
		('30', NULL, '4', '9', '8', '1'),
		('39', '6', '9', '6', '8', '1'),
		('49', '17', '1', '3', '9', '1'),
		('40', NULL, '1', '1', '9', '1'),
		('44', '8', '14', '2', '12', '1'),
		('2', '19', '14', '4', '11', '1'),
		('3', '23', '15', '5', '5', '1'),
		('32', NULL, '2', '7', '4', '1'),
		('11', NULL, '3', NULL, '2', '1'),
		('21', '19', '11', '17', '5', '1'),
		('25', '15', '10', '3', '4', '1'),
		(NULL, '9', NULL, '2', '6', '1'),
		('16', '20', '18', NULL, '8', '1'),
		('31', '3', '14', '16', '11', '1'),
		('36', '1', '17', '1', '1', '1'),
		('35', '5', '2', NULL, '6', '1');




insert into lekcja(sekretarka_id, instruktor_id, klient_id, zakres, czas_trwania, data, zestaw_id)
	values	('1', '328', '1', 'IKO-1', '2', '01.06.2016', '1'), 
		('1', '328', '3', 'IKO-1', '3', '07.06.2016', '2'),
		('1', '273', '4', 'IKO-2', '2', '03.06.2016', '3'),
		('1', '273', '5', 'IKO-1', '1', '04.06.2016', '4'),
		('1', '273', '3', 'IKO-2', '2', '08.06.2016', '5'),
		('1', '521', '1', 'IKO-2', '4', '08.06.2016', '6'),
		('1', '521', '6', 'IKO-1', '2.5', '08.06.2016', '7'),
		('2', '254', '3', 'IKO-3', '3.5', '15.06.2016', '8'),
		('2', '254', '7', 'IKO-1', '2', '15.06.2016', '9'),
		('2', '254', '8', 'IKO-1', '1', '16.06.2016', '10'),
		('2', '254', '8', 'IKO-2', '2.25', '16.06.2016', '11'),
		('2', '758', '9', 'IKO-3', '3', '16.06.2016', '12'),
		('2', '758', '10', 'IKO-1', '2.5', '16.06.2016', '13'),
		('2', '758', '10', 'IKO-1', '2.5', '29.06.2016', '14'),
		('2', '758', '10', 'IKO-2', '4', '30.06.2016', '15'),
		('2', '758', '11', 'IKO-1', '0.5', '30.06.2016', '16'),
		('2', '758', '12', 'IKO-1', '2', '30.06.2016', '17'),
		('1', '758', '11', 'IKO-2', '2.75', '01.07.2016', '18'),
		('1', '149', '11', 'IKO-2', '1', '02.07.2016', '19'),
		('1', '199', '13', 'IKO-3', '3.75', '02.07.2016', '20'),
		('1', '199', '13', 'IKO-3', '1.5', '02.07.2016', '21'),
		('1', '199', '14', 'IKO-1', '2.75', '02.07.2016', '22'),
		('2', '487', '15', 'IKO-1', '4', '20.07.2016', '23'),
		('2', '487', '16', 'IKO-1', '3', '21.07.2016', '24'),
		('2', '487', '17', 'IKO-1', '0.5', '21.07.2016', '25'),
		('2', '487', '18', 'IKO-1', '2.5', '22.07.2016', '26'),
		('2', '487', '19', 'IKO-2', '3.25', '23.07.2016', '27'),
		('1', '273', '20', 'IKO-1', '1.5', '07.08.2016', '28'),
		('1', '273', '20', 'IKO-1', '1.5', '07.08.2016', '29'),
		('1', '273', '20', 'IKO-2', '3', '10.08.2016', '30'),
		('1', '273', '20', 'IKO-2', '4', '11.08.2016', '31'),
		('1', '273', '20', 'IKO-3', '2', '11.08.2016', '32'),
		('1', '273', '17', 'IKO-2', '1.25', '11.08.2016', '33'),
		('1', '273', '15', 'IKO-1', '1', '11.08.2016', '34'),
		('1', '328', '14', 'IKO-1', '3', '11.08.2016', '35'),
		('1', '328', '8', 'IKO-2', '1.5', '11.08.2016', '36'),
		('1', '521', '9', 'IKO-3', '2', '11.08.2016', '37'),
		('1', '521', '12', 'IKO-1', '3', '11.08.2016', '38'),
		('1', '758', '11', 'IKO-2', '4.5', '11.08.2016', '39'),
		('1', '758', '11', 'IKO-2', '2', '12.08.2016', '40'),
		('1', '149', '17', 'IKO-2', '2', '12.08.2016', '41'),
		('1', '199', '7', 'IKO-1', '1.5', '12.08.2016', '42'),
		('1', '487', '7', 'IKO-1', '3', '12.08.2016', '43'),
		('2', '487', '10', 'IKO-3', '2.5', '22.08.2016', '44'),
		('2', '487', '20', 'IKO-3', '1.5', '22.08.2016', '45'),
		('2', '487', '2', NULL, '0.5', '25.08.2016', '46'),
		('2', '199', '4', 'IKO-2', '3', '26.08.2016', '47'),
		('2', '199', '4', 'IKO-3', '0.25', '03.09.2016', '48'),
		('2', '273', '13', 'IKO-3', '2', '03.09.2016', '49'),
		('1', '273', '19', 'IKO-2', '2', '03.09.2016', '50'),
		('1', '328', '10', 'IKO-3', '3', '05.09.2016', '51'),
		('1', '328', '2', 'IKO-1', '1.5', '01.06.2016', NULL);



