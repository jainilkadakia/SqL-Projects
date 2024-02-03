use portfolio_projectss;
 /* Q1 : Amount spent by each customer on artist .Return customer name, artist name and total expenses .*/
 Create table  top_artist  (
    SELECT artist.artist_id,artist.name_name,
	SUM(invoice_line.quantity * invoice_line.unit_price) AS total_sale
    FROM invoice_line
	JOIN track ON track.track_id = invoice_line.track_id
	JOIN album ON album.album_id = track.album_id
	JOIN artist ON artist.artist_id = album.artist_id
    GROUP BY artist.artist_id,artist.name_name
    ORDER BY total_sale DESC
    LIMIT 10
);
SELECT * FROM top_artist;


SELECT 
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    top_artist.name_name AS artist_name,
    SUM(invoice_line.quantity * invoice_line.unit_price) AS amounts 
FROM 
    invoice_line 
JOIN 
    invoice ON invoice.invoice_id = invoice_line.invoice_id
JOIN 
    customer ON customer.customer_id = invoice.customer_id
JOIN 
    track ON track.track_id = invoice_line.track_id
JOIN 
    album ON album.album_id = track.album_id
JOIN 
    top_artist ON top_artist.artist_id = album.artist_id
GROUP BY 
    customer.customer_id, 
    customer.first_name, 
    customer.last_name, 
    top_artist.name_name
ORDER BY 
    amounts DESC;
    
/* Q3: Write a query that determines the customer that has spent the most on music for each country. 
Write a query that returns the country along with the top customer and how much they spent. 
For countries where the top amount spent is shared, provide all customers who spent this amount. */
WITH RECURSIVE customter_with_country AS (
SELECT customer.customer_id,first_name,last_name,billing_country,
SUM(total) AS total_spending FROM invoice
JOIN customer ON customer.customer_id = invoice.customer_id
GROUP BY 1,2,3,4
ORDER BY 2,3 DESC),

country_max_spending AS
(SELECT billing_country,
MAX(total_spending) AS max_spending FROM customter_with_country
GROUP BY billing_country)

SELECT cc.billing_country, cc.total_spending, cc.first_name, cc.last_name, cc.customer_id
FROM customter_with_country cc
JOIN country_max_spending ms
ON cc.billing_country = ms.billing_country
WHERE cc.total_spending = ms.max_spending
ORDER BY 1;






 