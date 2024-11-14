create table movie(
page int,
aduit boolean,
path varchar,
genre_id int,
id int primary key,
Original_language varchar,
original_title varchar,
overview varchar,
popularity float,
poster_path varchar,
release_date date,
title varchar,
video boolean,
vote_average float,
vote_count varchar
)

--- Count of movies Each year
select count(title) from movies

select * from movies
---Count of movies Each year
select 
	extract( year from release_date) as year,
	count(*)
from movies
	group by 
		year
	order by
		year desc