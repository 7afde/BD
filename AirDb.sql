create database AirDb;
use AirDb;

create table Pilote(Matricule varchar(30),
        nom varchar(30) not null,
        prenom varchar(30) not null,
        date_nais date not null,
        NB_heures int not null,
        constraint pk_Pilote primary key (Matricule)
);

create table Avion(Code varchar(30),
        marque varchar(30) not null,
        modele varchar(30) not null,
        date_fab date not null,
        nb_heures int not null,
        constraint pk_Avoin primary key (Code)
);

create table Vols(num_vol int,
        destination varchar(30) not null,
        date_vol date not null,
        cd_avion varchar(30) not null,
        constraint pk_Vols primary key (num_vol),
        constraint fk_Vols foreign key (cd_avion) references Avion(Code)
);

create table Passagers(Num_passage int,
        nom varchar(30) not null,
        prenom varchar(30) not null,
        classe varchar(30) not null,
        num_vol int not null,
        constraint pk_Passagers primary key (Num_passage),
        constraint fk_Passagers foreign key (num_vol) references Vols(num_vol)
);