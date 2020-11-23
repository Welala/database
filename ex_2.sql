create user filipp  with password 'Filipp';

create database music_site with owner filipp;

create table executors(
    id serial primary key,
    name varchar(60)
);

create table albums(
    id serial primary key,
    name varchar(60) not null,
    year integer,
    executor_id serial
);

create table trecs(
    id serial primary key,
    name varchar(60) not null,
    duration numeric,
    album_id serial
);

create table genres(
    id serial primary key,
    name varchar(60) not null,
    executor_id serial
);

