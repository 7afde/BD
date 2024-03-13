create database test;
use test;


create table groupes(codeGrp int(2),
        annee varchar(5) not null,
        constraint pk_groupes primary key (codeGrp)
);

create table students(matricule varchar(10),
        nom varchar(30) not null,
        grp int(2),
        constraint pk_students primary key (matricule),
        constraint fk_students foreign key (grp) references groupes(codeGrp)
);