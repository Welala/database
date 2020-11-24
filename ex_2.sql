create user filipp  with password 'Filipp';

create database music_site with owner filipp;

create table executors(
    id serial primary key,
    name varchar(60),
    genres_id integer references genres(id)
);

create table albums(
    id serial primary key,
    name varchar(60) not null,
    year integer,
    executor_id integer references executors(id)
);

create table trecs(
    id serial primary key,
    name varchar(60) not null,
    duration numeric,
    album_id integer references albums(id)
);

create table genres(
    id serial primary key,
    name varchar(60) not null
);

