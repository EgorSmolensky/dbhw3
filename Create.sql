create table if not exists genre (
	id serial primary key,
	name varchar(60) not null
);

create table if not exists artist (
	id serial primary key,
    name varchar(60) not null
);

create table if not exists genre_artists (
	genre_id integer references Genre(id),
	artist_id integer references Artist(id),
	constraint pk primary key (artist_id, genre_id)
);

create table if not exists album (
	id serial primary key,
    name varchar(60) not null,
    year smallint check (year > 1890 and year < 2023)
);

create table if not exists album_artists (
	album_id integer references Album(id),
	artist_id integer references Artist(id),
	constraint prk primary key (artist_id, album_id)
);

create table if not exists Track (
	id serial primary key,
	name varchar(60) not null,
	duration time not null,
	album_id integer not null references Album(id)
);

create table if not exists Collection (
	id serial primary key,
    name varchar(60) not null,
    year smallint check (year > 1890 and year < 2023)
);

create table if not exists collection_tracks (
	track_id integer references Track(id),
	collection_id integer references Collection(id),
	constraint collection_pk primary key (track_id, collection_id)
);
	