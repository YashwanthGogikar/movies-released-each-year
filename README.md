## Create  table movies 
```
CREATE TABLE movie (
    page INT,
    adult BOOLEAN,
    path VARCHAR,
    genre_id INT,
    id INT PRIMARY KEY,
    Original_language VARCHAR,
    original_title VARCHAR,
    overview VARCHAR,
    popularity FLOAT,
    poster_path VARCHAR,
    release_date DATE,
    title VARCHAR,
    video BOOLEAN,
    vote_average FLOAT,
    vote_count VARCHAR
);
```
uploaded data from kaggale.com 

## Count of movies Each year
```
select 
	extract( year from release_date) as year,
	count(*)
from movies
	group by 
		year
	order by
		year desc
```
## Top rated movie 
```
with average_rating(Avg_rate) as (
		select round(max(vote_average),2) from movies)
select title, original_language, release_date, avg_rate
	from movies, average_rating
	where vote_average<avg_rate
	order by release_date
```

## Movies released every year
```
select 
   extract (year from release_date) as year,
   count(title)
from movies
group by 
     year
order by
    year desc;
```

## How many are avg from each language
```
select
    extract (year from release_date) as year, original_language, count(*)
	    from movies
    group by 
		year, original_language
	order by 
		year desc
```
## How many movies rating more than avg rating 
```
with average_rating(Avg_rate) as (
	select cast(avg(vote_average) as INT) from movies)
select title, original_language, release_date, avg_rate
	from movies, average_rating
	where vote_average>avg_rate
	order by release_date
```
## What is the Min rated and top rating film
```

select title as Movie_name, 
   release_date,
   vote_average as Rating
	from movies
   where Vote_average=(select max(Vote_average) from movies)
	or 
	  vote_average = (select min(Vote_average) from movies)
```
