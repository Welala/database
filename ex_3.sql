create table executors(
    id serial primary key,
    name varchar(60)
);

create table albums(
    id serial primary key,
    name varchar(60) not null,
    year integer,
    executor_id integer references executors(id)
);

create table trecks(
    id serial primary key,
    name varchar(60) not null,
    duration numeric,
    album_id integer references albums(id)
);

create table genres(
    id serial primary key,
    name varchar(60) not null,
    executor_id integer references executors(id)
);

create table executors_genres(
    id serial primary key,
    executors_id integer references executors(id),
    genres_id integer references genres(id)
);

create table executors_album(
    id serial primary key,
    executors_id integer references executors(id),
    album_id integer references albums(id)
);

create table collections(
    id serial primary key,
    name varchar(60) not null,
    year integer,
    treck_id integer references trecks(id),
    album_id integer references albums(id)
);

create table employees(
    id serial primary key,
    name varchar(60) not null,
    department varchar(60),
    chief varchar(60)
);