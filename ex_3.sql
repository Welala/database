create table executors(
    id serial primary key,
    name varchar(60)
);

create table albums(
    id serial primary key,
    name varchar(60) not null,
    year integer
);

create table trecks(
    id integer primary key,
    name varchar(60) not null,
    duration numeric,
    album_id integer references albums(id)
);

create table genres(
    id serial primary key,
    name varchar(60) not null
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
    id integer primary key,
    name varchar(60) not null,
    year integer
);

create table employees(
    id integer primary key,
    name varchar(60) not null,
    department varchar(60),
    chief integer references employees(id)
);

create table collections_trecks(
    id serial primary key,
    treck_id integer references trecks(id),
    collection_id integer references collections(id)
);