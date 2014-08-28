===================================================================================================================================================
Univerzitet "Džemal Bijediæ" u Mostaru Fakultet informacijskih tehnologija
===================================================================================================================================================

II Ciklus studija : Završni rad nakon II godine studija
Naziv rada: Moguænosti primjene sistema preporuke u kolaborativnom web okruženju za e-uèenje
Akademska godina: 2013./2014.

Mentor: doc. dr. Nina Bijediæ
Student: Elvis Kadiæ
Broj indeksa: IM120017

Datum 28.08.2014. godine

===================================================================================================================================================

Naziv aplikacije: FITCKMS

===================================================================================================================================================

o Aplikaciji:

FITCKMS je web aplikacija sastavljena od dva modula FIT-Wiki & FIT-QA, sa integriranim algoritnom pretraživanja lucene.net i sistemom preporuke.
Prvi modul FIT-Wiki je baziran na ideji poznate wikipedia-e, dok je drugi modul FIT-QA baziran na ideji stranice stackoverflow. 
Oba modula imaju sliène funkcionalnosti kao i originalne stranice.

Dovoljno je da u polje za pretragu unesete pojam i dobit æe te listu èlanaka, pitanja ili autora koji bi mogli pomoæi u vezi pojma vaše pretrage. 
U rezultate je ukljuèena i originalna wikipedia kao dodatni/eksterni izvor informacija.
Takoðer, za registrirane korisnike omoguæeno je glasanje za post(èlanak/pitanje)na skali od 1 do 5, kao i moguænosti "Sviða mi se"
ili "Ne sviða mi se"(Like, Unlike).

Svaki korisnik i post je uvršten u sistem bodovanja i rangiranja. 
U zavisnosti od broja bodova zaraðenim na post-u odreðena su pravila za dobivanje bronaznih, srebrenih i zlatnih medalja za korisnika. 
U zavisnosti od ukupnog broja prikupljenih medalja korisniku se dodijeljuje odgovarajuæi bedž koji asocira na njegov rejting.
Pokretanjem aplikacije moæi æete isprobati ostale funkcionalnosti.

===================================================================================================================================================

Korišteni softver:
Microsoft Visual Studio 2013 - Student Version Microsoft SQL Server 2014 - Student Version - Adobe Photoshop CS6

===================================================================================================================================================

Uputstvo za pokretanje Aplikacije:

1.KORAK 
U Sql Serveru potrebno je uraditi attach baze podataka koja se nalazi u folderu "..\FIT_KMS\DB"

2.KORAK 
Pokrenuti dokument Triglav.sln (Microsoft Visual Studio Solution)

3.KORAK 
Nakon što ste otvorili dokument, u solution exploreru(Visual Studio) potrebno je otvoriti Web projekt. 
Nakon toga otvoriti folder Public, te otvoriti page Home.aspx

4.KORAK 
Ako ste uspješno uradili predhodne korake i nalazite se na Home.aspx stranici, ostalo je samo da kompajlirate program i 
isprobate funkcionalnosti aplikacije.

5.KORAK
(opcionalno) Da bi testirali sve funkcionalnosti aplikacije korisnici se moraju registrovati.Dugme za registraciju nalazi se u desnom gornjem uglu.

Ako ipak želite preskoèiti taj korak, možete se logirati kao postojeæi korisnik u bazi podataka sa slijedeæim podacima: 
Korisnik: blocky, kor01; kor02; kor03; kor04; kor05; kor06; kor07; kor08; kor09; kor10; kor11; kor12; kor13; kor14; 
Lozinka: test (za sve gore navedene usere). Dugme za logiranje nalazi se u desnom gornjem uglu.

Ako želite preskoèiti i ovaj korak, možete probati aplikaciju sa ogranièenim funkcionalnostima predviðenu za goste stranice.

===================================================================================================================================================