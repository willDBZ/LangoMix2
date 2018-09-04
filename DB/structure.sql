-- script qui permet de créer la structure utilisée pour le site LangoMix

-- effacer les séquences
drop sequence usager_seq;
drop sequence commentaire_seq;
drop sequence interet_seq;
drop sequence interetUsager_seq;
drop sequence blog_seq;
drop sequence log_info_seq;

-- effacer les trigger
drop trigger usager_trig;
drop trigger commentaire_trig;
drop trigger interet_trig;
drop trigger blog_trig;
drop trigger log_info_trig;

-- effacer les tables
drop table usager;
drop table commentaire;
drop table interet;
drop table interetUsager;
drop table blog;
drop table log_info;
drop table hashUrls;


--créer les séquences
create sequence usager_seq start with 1;
create sequence commentaire_seq start with 1;
create sequence interet_seq start with 1;
create sequence interetUsager_seq start with 1;
create sequence blog_seq start with 1;
create sequence log_info_seq start with 1;


-- créer les nouvelles tables
create table usager
(
    id INTEGER NOT NULL,
    nom varchar(30),
    prenom varchar(30),
    sexe integer not null,
    dateCreation date,
    email varchar(70),
    usager varchar(30) unique,
    motDePasse varchar(60),
    urlHash varchar(10),
    urlHashActif timestamp,
    administrateur INTEGER
);

insert into usager values(-1, 'Anonyme','Anonyme', 1, sysdate, 'Anonyme@anonyme.ca', 'Anonyme','$2y$10$C4k9wDR0Qg8dWHpwbNCCqekBHiuM5gidzF6iVq2LxzAgEczgs50OG', 'aaaaaa',NULL,NULL);

create table commentaire
(
    id integer not null,
    titre varchar(30) not null,
    id_blog integer not null,
    id_usager integer not null,
    texte varchar(500) not null,
    dateEcrit date
);

create table interet
(
    id integer not null,
    nom varchar(30) 
);

create table interetUsager
(
    id_interet integer not null,
    id_usager integer not null
);

create table blog
(
    id_blog integer not null,
    titre varchar(100),
    dateCreation date,
    dateModification date,
    id_usager integer not null,
    texte varchar(3000),
    censure integer not null
);

create table hashUrls
(
    id NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
    id_utilisateur number not null,
    date_expiration timestamp,
    url varchar(60),
    actif integer check(actif = 1 OR actif = 0),
    constraint pk_id_hashUrls primary key(id)
);



create table log_info
(
    id integer not null,
    id_usager integer not null,
    dateConnexion date
);



create or replace trigger usager_trig
before insert on usager
for each row

begin
    select usager_seq.nextval
    into :new.id
    from dual;
end;
/

create or replace trigger commentaire_trig
before insert on commentaire
for each row

begin
    select commentaire_seq.nextval
    into :new.id
    from dual;
end;
/

create or replace trigger interet_trig
before insert on interet
for each row

begin
    select interet_seq.nextval
    into :new.id
    from dual;
end;
/

create or replace trigger blog_trig
before insert on blog
for each row

begin
    select blog_seq.nextval
    into :new.id_blog
    from dual;
end;
/

create or replace trigger log_info_trig
before insert on log_info
for each row

begin
    select log_info_seq.nextval
    into :new.id
    from dual;
end;
/




