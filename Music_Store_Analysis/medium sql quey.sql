USE portfolio_projectss;

/* Return first name,last name and email and genre 
of rock  music listeners .Return your list ordered by email starting with A */
with cte as (
SELECT  genre_id,
	customer.first_name, 
customer.last_name 
FROM 
    customer 
JOIN 
    invoice using(customer_id)
JOIN 
    invoice_line ON invoice.invoice_id = invoice_line.invoice_id 
JOIN 
    track ON invoice_line.track_id = track.track_id 
JOIN 
    genre using(genre_id)
WHERE 
    genre_id in (1)
)
select 
distinct concat(first_name," " ,last_name) as name
 from cte
join genre using(genre_id)
;

 /* Q2 Invite the artist who have written most rock music in 
 our dataset .Write a query that returns Artist name and total 
 tarck of the count of top 10 rock bands */
 Select artist.artist_id,artist.name_name,genre.name_name  ,Count(artist.artist_id) as no_of_songs 
 From  track 
 JOIN album on album.album_id =track.album_id
 JOIN artist on artist.artist_id =album.artist_id
 JOIN genre on genre.genre_id = track.genre_id 
 where genre.genre_id = 1
 group by artist.artist_id ,artist.name_name ,genre.name_name
 order by no_of_songs desc 
  limit 10 ;
 

/* Q3 : Return all the track names that have a song length longer than the average song length. 
Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first. */
 SELECT name_name,milliseconds
FROM track
WHERE milliseconds > (
	SELECT AVG(milliseconds) AS avg_track_length
	FROM track )
ORDER BY milliseconds DESC;
 
 
