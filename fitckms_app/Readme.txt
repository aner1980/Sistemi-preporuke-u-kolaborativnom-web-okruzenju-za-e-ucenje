===================================================================================================================================================
Univerzitet "D�emal Bijedi�" u Mostaru Fakultet informacijskih tehnologija
===================================================================================================================================================

II Ciklus studija : Zavr�ni rad nakon II godine studija
Naziv rada: Mogu�nosti primjene sistema preporuke u kolaborativnom web okru�enju za e-u�enje
Akademska godina: 2013./2014.

Mentor: doc. dr. Nina Bijedi�
Student: Elvis Kadi�
Broj indeksa: IM120017

Datum 28.08.2014. godine

===================================================================================================================================================

Naziv aplikacije: FITCKMS

===================================================================================================================================================

o Aplikaciji:

FITCKMS je web aplikacija sastavljena od dva modula FIT-Wiki & FIT-QA, sa integriranim algoritnom pretra�ivanja lucene.net i sistemom preporuke.
Prvi modul FIT-Wiki je baziran na ideji poznate wikipedia-e, dok je drugi modul FIT-QA baziran na ideji stranice stackoverflow. 
Oba modula imaju sli�ne funkcionalnosti kao i originalne stranice.

Dovoljno je da u polje za pretragu unesete pojam i dobit �e te listu �lanaka, pitanja ili autora koji bi mogli pomo�i u vezi pojma va�e pretrage. 
U rezultate je uklju�ena i originalna wikipedia kao dodatni/eksterni izvor informacija.
Tako�er, za registrirane korisnike omogu�eno je glasanje za post(�lanak/pitanje)na skali od 1 do 5, kao i mogu�nosti "Svi�a mi se"
ili "Ne svi�a mi se"(Like, Unlike).

Svaki korisnik i post je uvr�ten u sistem bodovanja i rangiranja. 
U zavisnosti od broja bodova zara�enim na post-u odre�ena su pravila za dobivanje bronaznih, srebrenih i zlatnih medalja za korisnika. 
U zavisnosti od ukupnog broja prikupljenih medalja korisniku se dodijeljuje odgovaraju�i bed� koji asocira na njegov rejting.
Pokretanjem aplikacije mo�i �ete isprobati ostale funkcionalnosti.

===================================================================================================================================================

Kori�teni softver:
Microsoft Visual Studio 2013 - Student Version Microsoft SQL Server 2014 - Student Version - Adobe Photoshop CS6

===================================================================================================================================================

Uputstvo za pokretanje Aplikacije:

1.KORAK 
U Sql Serveru potrebno je uraditi attach baze podataka koja se nalazi u folderu "..\FIT_KMS\DB"

2.KORAK 
Pokrenuti dokument Triglav.sln (Microsoft Visual Studio Solution)

3.KORAK 
Nakon �to ste otvorili dokument, u solution exploreru(Visual Studio) potrebno je otvoriti Web projekt. 
Nakon toga otvoriti folder Public, te otvoriti page Home.aspx

4.KORAK 
Ako ste uspje�no uradili predhodne korake i nalazite se na Home.aspx stranici, ostalo je samo da kompajlirate program i 
isprobate funkcionalnosti aplikacije.

5.KORAK
(opcionalno) Da bi testirali sve funkcionalnosti aplikacije korisnici se moraju registrovati.Dugme za registraciju nalazi se u desnom gornjem uglu.

Ako ipak �elite presko�iti taj korak, mo�ete se logirati kao postoje�i korisnik u bazi podataka sa slijede�im podacima: 
Korisnik: blocky, kor01; kor02; kor03; kor04; kor05; kor06; kor07; kor08; kor09; kor10; kor11; kor12; kor13; kor14; 
Lozinka: test (za sve gore navedene usere). Dugme za logiranje nalazi se u desnom gornjem uglu.

Ako �elite presko�iti i ovaj korak, mo�ete probati aplikaciju sa ograni�enim funkcionalnostima predvi�enu za goste stranice.

===================================================================================================================================================