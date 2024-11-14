# movies-released-each-year
This dataset contain information of movies released each year with there ratings.

## create table
'''sql
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
'''
