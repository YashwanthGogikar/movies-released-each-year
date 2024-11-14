
```sql
CREATE TABLE movie (
    page INT,
    aduit BOOLEAN,
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
