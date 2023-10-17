DROP TABLE ROL CASCADE CONSTRAINTS;
CREATE TABLE ROL(
id_rol		character varying(50) NOT NULL,
denumire_rol		character varying(50) NOT NULL,
CONSTRAINT pk_rol PRIMARY KEY (id_rol)
);

DROP TABLE PROFIL CASCADE CONSTRAINTS;
CREATE TABLE PROFIL(
id_profil		character varying(50) NOT NULL,
nume_profil		character varying(50) NOT NULL,
prenume_profil		character varying(50) NOT NULL,
img_profil		character varying(255),
tara_profil	   character varying(50),
email_profil		character varying(50) NOT NULL,
id_rol			character varying(50) NOT NULL,
CONSTRAINT pk_profil PRIMARY KEY (id_profil),
CONSTRAINT PROFIL_id_rol_fkey FOREIGN KEY(id_rol) REFERENCES ROL(id_rol)

);

DROP TABLE ARTIST CASCADE CONSTRAINTS;
CREATE TABLE ARTIST(
id_artist		character varying(50) NOT NULL,
nume_artist		character varying(50) NOT NULL,
prenume_artist character varying(50) NOT NULL,
email_artist    character varying(50) NOT NULL,
adresa_artist    character varying(50),
nr_tel_artist    character varying(50),
tara_artist    character varying(50),
CONSTRAINT pk_artist PRIMARY KEY (id_artist)
);

DROP TABLE TIP_ARTA CASCADE CONSTRAINTS;
CREATE TABLE TIP_ARTA(
id_tip_arta		character varying(50) NOT NULL,
denumire_tip		character varying(50) NOT NULL,
CONSTRAINT pk_tip_arta PRIMARY KEY (id_tip_arta)
);

DROP TABLE ARTA  CASCADE CONSTRAINTS;
CREATE TABLE ARTA(
id_arta		character varying(50) NOT NULL,
denumire_arta		character varying(50) NOT NULL,
an_arta		number NOT NULL,
descriere_arta		character varying(255) NOT NULL,
CONSTRAINT pk_arta PRIMARY KEY (id_arta),
id_tip_arta character varying(50) NOT NULL,
id_artist character varying(50) NOT NULL,
CONSTRAINT ARTA__tip_arta_fkey FOREIGN KEY(id_tip_arta) REFERENCES TIP_ARTA(id_tip_arta),
CONSTRAINT ARTA_id_artist_fkey FOREIGN KEY(id_artist) REFERENCES ARTIST(id_artist)
);

DROP TABLE POSTARE CASCADE CONSTRAINTS;
CREATE TABLE POSTARE(
id_postare		character varying(50) NOT NULL,
img_postare	     character varying(50) NOT NULL,
text_postare	character varying(255) NOT NULL,
data_postare    date NOT NULL,
id_artist	character varying(50) NOT NULL,
CONSTRAINT pk_postare PRIMARY KEY (id_postare),
CONSTRAINT POSTARE_id_artist_fkey FOREIGN KEY(id_artist) REFERENCES ARTIST(id_artist)
);


DROP TABLE UTILIZATOR CASCADE CONSTRAINTS;
CREATE TABLE UTILIZATOR(
id_user		character varying(50) NOT NULL,
email		character varying(50) NOT NULL,
username		character varying(50) NOT NULL,
password	character varying(50) NOT NULL,
id_rol character varying(50) NOT NULL,
CONSTRAINT pk_user PRIMARY KEY (id_user),
CONSTRAINT USER_id_rol_fkey FOREIGN KEY(id_rol) REFERENCES ROL(id_rol)
);

DROP TABLE COMENTARII CASCADE CONSTRAINTS;
CREATE TABLE COMENTARII(
id_comentariu	character varying(50) NOT NULL,
text_comentariu	character varying(255) NOT NULL,
data_comentariu	date NOT NULL,
id_postare character varying(50) NOT NULL,
id_user character varying(50) NOT NULL,
CONSTRAINT pk_comentarii PRIMARY KEY (id_comentariu),
CONSTRAINT COMENTARII_id_postare_fkey FOREIGN KEY(id_postare) REFERENCES POSTARE(id_postare),
CONSTRAINT COMENTARII_id_user_fkey FOREIGN KEY(id_user) REFERENCES UTILIZATOR(id_user) 
);

insert into rol(id_rol,denumire_rol) values ('1','utilizator');
insert into rol(id_rol,denumire_rol) values ('2','artist');

insert into profil(id_profil, nume_profil, prenume_profil, img_profil, tara_profil, email_profil, id_rol) values ('1','Istrate','Bianca','bianca.png','Romania','bianca.istrate2408@gmail.com','1');
insert into profil(id_profil, nume_profil, prenume_profil, img_profil, tara_profil, email_profil, id_rol) values ('2','Dumitru','Andreea','andreea.jpg','Romania','andreea_dumitru@gmail.com','1');
insert into profil(id_profil, nume_profil, prenume_profil, img_profil, tara_profil, email_profil, id_rol) values ('3','Ciuca','Matei','matei.jpg','Romania','mateialexandru1903@yahoo.com','2');
insert into profil(id_profil, nume_profil, prenume_profil, img_profil, tara_profil, email_profil, id_rol) values ('4','Mateiuc','Alex','alex.png','Romania','alexkristi@gmail.com','2');
insert into profil(id_profil, nume_profil, prenume_profil, img_profil, tara_profil, email_profil, id_rol) values ('5','Marinescu','Andrei','andrei.jpg','Romania','marinescu.andrei@gmail.com','1');
insert into profil(id_profil, nume_profil, prenume_profil, img_profil, tara_profil, email_profil, id_rol) values ('6','Baicu','Alexandru','baicu.png','Romania','alexandru_b@gmail.com','1');
insert into profil(id_profil, nume_profil, prenume_profil, img_profil, tara_profil, email_profil, id_rol) values ('7','Gheorgheasa','Petru','petru.png','Romania','petru_gheorgheasa@yahoo.com','1');
insert into profil(id_profil, nume_profil, prenume_profil, img_profil, tara_profil, email_profil, id_rol) values ('8','Sandu','Cris','cris.jpg','Romania','cris_sandu@yahoo.com','2');
insert into profil(id_profil, nume_profil, prenume_profil, img_profil, tara_profil, email_profil, id_rol) values ('9','Groman','Oana','oana.png','Romania','oana.groman@yahoo.com','2');
insert into profil(id_profil, nume_profil, prenume_profil, img_profil, tara_profil, email_profil, id_rol) values ('10','Dan','Camelia','camelia.jpg','Romania','camelia_dan@yahoo.com','1');
insert into profil(id_profil, nume_profil, prenume_profil, img_profil, tara_profil, email_profil, id_rol) values ('11','Dan','Catalina','catalina.png','Romania','catalina_dan@yahoo.com','1');
insert into profil(id_profil, nume_profil, prenume_profil, img_profil, tara_profil, email_profil, id_rol) values ('12','Ghesquiere','Eden','eden.jpg','France','eden14@gmail.com','2');
insert into profil(id_profil, nume_profil, prenume_profil, img_profil, tara_profil, email_profil, id_rol) values ('13','Chelu','Andrei','chandrei.jpg','Romania','andrei.chelu@yahoo.com','1');
insert into profil(id_profil, nume_profil, prenume_profil, img_profil, tara_profil, email_profil, id_rol) values ('14','Blanaru','Adina','adina.png','Romania','adina_blanaru@yahoo.com','1');
insert into profil(id_profil, nume_profil, prenume_profil, img_profil, tara_profil, email_profil, id_rol) values ('15','Prelipcean','Claudiu','claudiu.jpg','Romania','claudiu.prelipcean@yahoo.com','1');

insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('1','Ghenie','Adrian','adrian.ghenie@gmail.com','','0752465951','Romania');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('2','Cantor','Mircea','cantor.mircea@gmail.com','','0752496964','Romania');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('3','Radvan','Alexandru','radvan.alexandru25@yahoo.com','','0726465951','Romania');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('4','Boar','Razvan','razvanboar1960@gmail.com','','0726444951','Romania');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('5','Weiwei','Ai','aiweiwei@gmail.com','','0752435451','China');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('6','Banksy',' ','banksky@gmail.com','','0262435451','Regatul Unit');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('7','Kusama','Yayoi','yayoi_kusama@gmail.com','','0723435451','Japonia');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('8','Abramovic','Marina','marina_abramovic@gmail.com','','0723435451','Serbia');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('9','Hirst','Damien','damien_hirst@gmail.com','','0752435451','Regatul Unit');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('10','Koons','Jeff','jeff.koons@gmail.com','','0728895451','Statele Unite');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('11','Eliasson','Olafur','olafur_eliasson@gmail.com','','0723435451','Danemarca');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('12','Kapoor','Anish','anish_kapoor@gmail.com','','0724435451','India');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('13','Emin','Tracey','tracey_emin@gmail.com','','0766435451','Regatul Unit');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('14','Mehretu','Julie','julie.mehretu@gmail.com','','076412451','Etiopia');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('15','Richter','Gerhard','gerhard.richter@gmail.com','','0751235451','Germania');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('16','Hockney','David','david.hockney@gmail.com','','0752665451','Regatul Unit');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('17','Rauch','Neo','rauch.neo@gmail.com','','0766432251','Germania');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('18','Brown','Cecily','cecily.brown@gmail.com','','0752265451','Regatul Unit');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('19','Dumas','Marlene','marlene.dumas@gmail.com','','0752775451','Africa de Sud');
insert into artist(id_artist,nume_artist,prenume_artist,email_artist,adresa_artist, nr_tel_artist,tara_artist) values ('20','Saville','Jenny','jenny.saville@gmail.com','','0723645451','Regatul Unit');

insert into tip_arta(id_tip_arta,denumire_tip) values ('1','pictura');
insert into tip_arta(id_tip_arta,denumire_tip) values ('2','desen');
insert into tip_arta(id_tip_arta,denumire_tip) values ('3','gravura');
insert into tip_arta(id_tip_arta,denumire_tip) values ('4','sculptura');
insert into tip_arta(id_tip_arta,denumire_tip) values ('5','arhitectura');
insert into tip_arta(id_tip_arta,denumire_tip) values ('6','fotografie');
insert into tip_arta(id_tip_arta,denumire_tip) values ('7','ceramica');
insert into tip_arta(id_tip_arta,denumire_tip) values ('8','arta sticlei');
insert into tip_arta(id_tip_arta,denumire_tip) values ('9','graffiti');

insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('1','Nickelodeon','2008','Sold with 8 million euros.','1','1');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('2','Diamond Corn','2005','The work consisted of 20 corn cobs cast in crystal, accompanied by two corrugated cardboards, folded to form a simple support that highlights the luminosity of the elements exposed above.','4','2');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('3','A peaceful place','2022','Acrylic on canvas','1','3');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('4','Ez Valley','2017','The picture plane pulses with associations while isolating the formal pleasures of line, texture, and weight.','1','4');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('5','Artists Hand','2017','Ai Weiwei points his middle finger at iconic landmarks, such as the White House, the Mona Lisa, and the Reichstag in Berlin. ','4','5');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('6','FCK PTN!','1974','The stamp issue “??? ???! (FCK PTN!)” features Banksys graffiti on the wall of a destroyed house in Borodyanka, Kiev.','9','6');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('7','Butterfly','1988','The butterfly is believed to transport the soul between the realm of the living and the realm of the dead and is representative of metamorphosis and transformation.','1','7');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('8','Portrait with Lamb','2010','Employing duration, pain, danger, exhaustion, and viewer participation, she works at extremes as she complicates the relationship between art and audience.','6','8');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('9','Away from the Flock','1994','is a floor-based sculpture consisting of a glass-walled tank filled with formaldehyde solution in which a dead sheep is fixed so that it appears to be alive and caught in movement.','4','9');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('10','Rabbit','1986','Stainless steel sculpture','4','10');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('11','Wirbelwerk','2012',' Made of polished metal tubes and hand-blown coloured-glass triangles, the work draws visitors into the visual universe of the paintings in the galleries above.','4','11');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('12','Mother as a Mountain','1985','Sculpture','4','12');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('13','White Cube','2021','her work draws on the fundamental themes of love, desire, loss and grief, unravelling in the process the nuanced constructs of ‘woman’ and ‘self’ through probing self-exploration.','1','13');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('14','Easy Dark','2007',' Mehretu uses her eclectic mix of styles to explore the history and politics of the urban environment; her source material has included architectural plans, city maps, and photographs, which she has transposed onto her massive canvases via projection.','1','14');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('15','Party','1963','A gathering of people who have been invited by a host for the purposes of socializing, conversation, recreation','1','15');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('16','Mr and Mrs Clark and Percy','1971',' it depicts the fashion designer Ossie Clark and the textile designer Celia Birtwell in their flat in Notting Hill Gate shortly after their wedding, with one of the couples cats on Clarks knee.','1','16');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('17','Tal','1999','It depicts two men in boxing shorts and shoes who fight each other with long sticks. In the foreground is a red, wooden manger with the word "Tal", which is German for valley.','1','17');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('18','Teenage Wildlife','2003','Cecily Brown knows that desire lies in the flirtation: amid her fervent gestural abstraction, just the glimpse of suggestion is enough.','1','18');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('19','The Painter','1994','With her brooding dark eyes, green hair, and paint–smeared body, this child confronts us from the menacing height of six feet and appears as a force of destruction.','1','19');
insert into arta(id_arta,denumire_arta,an_arta,descriere_arta,id_tip_arta,id_artist) values ('20','Aleppo','2022','Aleppo is the first work by the artist to refer directly to a contemporary conflict, the Syrian civil war, and the impact of such conflict on civilians.','1','20');

insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('1','images/img1.jpg','A serene landscape painting featuring a calm lake surrounded by mountains.','01/apr/2022','1');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('2','images/img2.jpg','A bold and colorful abstract painting with various shapes and lines.','02/mar/2023','1');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('3','images/img3.jpg','A portrait of a woman with a mysterious expression on her face.','05/apr/2023','1');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('4','images/img4.jpg','A still life painting of fruit and flowers arranged on a table.','21/may/2022','2');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('5','images/img5.jpg','A dramatic seascape painting with crashing waves and stormy skies.','11/jun/2021','3');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('6','images/img6.jpg','A whimsical painting of animals in a surreal forest setting.','07/apr/2022','3');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('7','images/img7.jpg','A vibrant cityscape painting with busy streets and tall buildings.','01/jul/2021','3');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('8','images/img8.jpg','A haunting painting of a ghostly figure in a dark forest.','05/apr/2021','6');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('9','images/img9.jpg','A romantic painting of a couple walking hand-in-hand along a beach.','19/jan/2023','7');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('10','images/img10.jpg','A peaceful painting of a sunlit field with wildflowers and tall grass.','24/apr/2023','7');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('11','images/img11.jpg','A nostalgic painting of a small town with a quaint main street.','25/apr/2023','9');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('12','images/img12.jpg','A mysterious painting of an empty room with an open door leading to darkness.','11/mar/2021','10');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('13','images/img13.jpg','A dramatic painting of a fiery sunset over a mountain range.','01/feb/2021','11');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('14','images/img14.jpg','A contemplative painting of a lone figure sitting on a bench in a park.','01/feb/2021','11');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('15','images/img15.jpg','A playful painting of children playing in a park on a sunny day.','01/aug/2022','19');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('16','images/img16.jpg','A surreal painting of a floating city in the clouds.','01/aug/2022','20');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('17','images/img17.jpg','A tender painting of a mother and child embracing.','01/may/2023','20');
insert into postare(id_postare,img_postare,text_postare,data_postare,id_artist) values('18','images/img18.jpg','A moody painting of a dark alleyway in a city.','01/aug/2021','20');

insert into utilizator(id_user,email,username,password,id_rol) values('1','bianca.istrate2408@gmail.com','bianca_istrate','parola1','1');
insert into utilizator(id_user,email,username,password,id_rol) values('2','andreea_dumitru@gmail.com','andreea_dumitru','parola2','1');
insert into utilizator(id_user,email,username,password,id_rol) values('3','mateialexandru1903@gmail.com','mateialexandru1903','parola3','1');
insert into utilizator(id_user,email,username,password,id_rol) values('4','alexkristi@gmail.com','alexkristi','parola4','1');
insert into utilizator(id_user,email,username,password,id_rol) values('5','marinescu.andrei@gmail.com','marinescu.andrei','parola5','1');
insert into utilizator(id_user,email,username,password,id_rol) values('6','alexandru_b@gmail.com','alexandru_b','parola6','1');
insert into utilizator(id_user,email,username,password,id_rol) values('7','petru_gheorgheasa@yahoo.com','petru_gheorgheasa','parola7','1');
insert into utilizator(id_user,email,username,password,id_rol) values('8','adrian.ghenie@gmail.com','adrian_ghenie','parola8','2');
insert into utilizator(id_user,email,username,password,id_rol) values('9','cantor.mircea@gmail.com','cantor.mircea','parola9','2');
insert into utilizator(id_user,email,username,password,id_rol) values('10','radvan.alexandru25@gmail.com','radvan.alexandru25','parola10','2');
insert into utilizator(id_user,email,username,password,id_rol) values('11','banksky@gmail.com','banksky','parola11','2');
insert into utilizator(id_user,email,username,password,id_rol) values('12','yayoi_kusama@gmail.com','yayoi_kusama','parola12','2');
insert into utilizator(id_user,email,username,password,id_rol) values('13','damien_hirst@gmail.com','damien_hirst','parola13','2');
insert into utilizator(id_user,email,username,password,id_rol) values('14','jeff.koons@gmail.com','jeff.koons','parola14','2');
insert into utilizator(id_user,email,username,password,id_rol) values('15','olafur_eliasson@gmail.com','olafur_eliasson','parola15','2');
insert into utilizator(id_user,email,username,password,id_rol) values('16','marlene.dumas@gmail.com','marlene.dumas','parola16','2');
insert into utilizator(id_user,email,username,password,id_rol) values('17','jenny.saville@gmail.com','jenny.saville','parola17','2');

insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('1','This painting evokes a sense of peace and calm. I feel like I could easily get lost in this beautiful landscape.','01/mar/2022','2','3');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('2','The beauty of this sculpture is truly breathtaking. The details are incredible and leave me speechless.','01/mar/2023','2','1');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('3','This painting reminds me of my childhood and days spent outdoors. Its so comforting and familiar.','15/may/2023','1','3');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('4','The colors in this artwork are so vibrant and eye-catching. I cant stop staring at it!','16/aug/2022','1','4');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('5','The emotion captured in this piece is so powerful. Its as if the artist was able to transfer their feelings directly onto the canvas','08/aug/2022','3','5');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('6','The composition of this painting is so unique and interesting. I love the way the elements come together.','09/sep/2022','3','6');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('7','The way the light falls in this artwork is truly mesmerizing. It creates a sense of depth and movement','14/sep/2022','3','1');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('8','This sculpture is so dynamic and full of energy. I can feel the movement and excitement radiating from it.','01/sep/2023','6','7');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('9','The brushstrokes in this painting are so bold and expressive. Its amazing how much emotion can be conveyed with just a few strokes.','01/feb/2022','5','9');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('10','The attention to detail in this artwork is impressive. Every element is perfectly placed and adds to the overall composition.','23/feb/2023','8','1');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('11','This sculpture is so intricate and delicate. I cant imagine the amount of skill and patience required to create something like this.','01/feb/2022','9','5');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('12','The use of color in this painting is so clever. It draws the eye to certain areas and creates a sense of balance.','09/oct/2022','10','9');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('13','This artwork feels so dreamlike and surreal. Its as if Im looking into another world','03/oct/2022','11','1');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('14','The textures in this piece are so interesting. I love the way they contrast with each other and create a sense of depth.','15/oct/2022','12','1');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('15','The way the artist has captured the human form in this sculpture is remarkable. Its so lifelike and realistic.','27/oct/2022','16','8');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('16','This painting feels so atmospheric and moody. Its as if Im standing right in the middle of the scene.','18/jan/2023','17','9');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('17','The lines in this artwork are so fluid and graceful. They create a sense of movement and elegance.','01/apr/2023','18','10');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('18','The contrast between light and dark in this piece is so striking. It creates a sense of drama and tension.','01/may/2023','8','5');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('19','The way the artist has captured the natural world in this painting is so beautiful. It feels like a celebration of nature.','01/feb/2023','14','7');
insert into comentarii(id_comentariu,text_comentariu,data_comentariu,id_postare,id_user) values('20','This sculpture has so much personality and character. Its as if it has a story to tell.','01/feb/2023','15','12');

--INTEROGARI
--adaugare adresa pentru artistul cu id=4
update artist set adresa_artist='Bulevardul Dacia nr.14' where id_artist='4';
select * from artist;

--afisarea tuturor comentariilor, a utilizatorilor de care au fost scrise si a datii postarilor de care apartin
select username,data_postare,text_comentariu from comentarii
inner join utilizator on comentarii.id_user=utilizator.id_user
inner join postare on postare.id_postare=comentarii.id_postare;

--afisare numar artisti care nu au nr de telefon
update artist set nr_tel_artist='' where id_artist>4;
select count(nume_artist) from artist where nr_tel_artist IS NULL;
select * from artist;

--creare view pentru a numara un anumit tip de arta (picturi)
drop view Arta_si_tip;
create view Arta_si_tip as select denumire_arta, denumire_tip from arta, tip_arta where arta.id_tip_arta=tip_arta.id_tip_arta;
select count(denumire_arta)as Numar_picturi from Arta_si_tip where denumire_tip='pictura';

--afisare profile care au ca adreasa de mail yahoo
select * from profil where email_profil like '%@yahoo.com' and img_profil like '%.jpg';

--grupare dupa tara de provenienta a tuturor artistilor
select count(nume_artist) as Numar_Artisti,tara_artist from artist group by tara_artist;

--afisare nume artisti si postarile fiecaruia
select nume_artist,data_postare from artist,postare where artist.id_artist=postare.id_artist order by nume_artist asc ;

--adaugare nr de aprecieri pentru fiecare postare
alter table postare
add (nr_aprecieri number);
select * from postare;
update postare set nr_aprecieri='20' where id_postare='3';
update postare set nr_aprecieri='14' where id_postare='15';
update postare set nr_aprecieri='9' where id_postare='7';

--grupare dupa data comentariilor, doar a celor postate inainte de data de 1 ianuarie 2023
select count(id_comentariu),data_comentariu from comentarii where data_comentariu<'01/jan/2023' group by data_comentariu;

--folosire 
select art.denumire_arta,art.an_arta, art.descriere_arta, a.nume_artist from arta art ,artist a where art.id_artist=a.id_artist;

--subinterogare: afisare data postare si text pentru postarea cu cele mai multe aprecieri
select data_postare,text_postare
from postare
where nr_aprecieri=(select max(nr_aprecieri) from postare);

--afisare rol pentru fiecare utilizator
select 'Detinatorul contului cu user-ul ' || username || ' are rol de '|| denumire_rol || '.' from utilizator,rol where utilizator.id_rol=rol.id_rol;


SELECT count(id_arta),an_arta FROM arta
Group by an_arta Having an_arta>'2000' order by an_arta asc;

--inner join
SELECT *
FROM profil
INNER JOIN rol ON profil.id_rol=rol.id_rol;

--union
select email_profil from profil
union 
select email_artist from artist;