select name, year from album
where year = 2018;

select name, duration from track
where duration = (select max(duration) from track);

select name from track
where duration >= '00:03:30';

select name from collection
where year >= 2018 and year <= 2020;

select name from artist
where name not like '% %';

select name from track
where lower(name) like '%my%' or lower(name) like '%мой%';