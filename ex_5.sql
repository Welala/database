--Задание 1
select count(e.name) from executors e
join genres g on e.id = g.executor_id
group by g.name;
--Задание 2 
select count(*) from trecks t
join albums a on t.album_id = a.id
where a.year between 2019 and 2020;
--Задание 3
select avg(t.duration) from trecks t
join albums a on t.album_id = a.id
group by a.name;
--Задание4 
select e.name from executors e
join albums a on e.id = a.executor_id
where a.year <> 2020;
--Задание 5
select c.name from executors e
join albums a on a.executor_id = e.id
join collections c on e.id = c.album_id
where e.name = 'Timyr';
--Задание 6
select a.name, g.id from albums a
join executors e on a.executor_id = e.id
join genres g on g.executor_id = e.id
group by g.id
having g.id>1;
--Задание 7
select t.name from trecks t
left join collections c on t.id = c.treck_id
where c.treck_id is null;
--Задание 8
select a.name, t.duration from albums a
join executors e on a.executor_id = e.id
join trecks t on t.album_id = a.id
order by t.duration
limit 1
;
--Задание 9
select a.name from albums a
join trecks t on a.id = t.album_id
group by a.name
order by count(*)
limit 1;