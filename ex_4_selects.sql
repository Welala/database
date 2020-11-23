select name, year 
from albums 
where year = 2013;

select name, duration
from trecks
where duration = (select max(duration) from trecks);

select name, duration
from trecks
where duration > 3.5;

select name 
from collections
where year>=2018 and year <=2020;

select name
from executors
where name not like '% %';

select name
from trecks
where name like '%мой%' or name like '%my%';