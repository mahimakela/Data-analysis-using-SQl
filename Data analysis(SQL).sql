/* SIMPLE LEVEL   
Q1: Who is the senior most employee based on job title?

select * from employee
order by levels desc
limit 1
*/


/*Q2)which country have most invoice?

 select count(*)as c , billing_country
	from invoice
group by billing_country 
	order by  c desc*/


/*Q3)what are top  3 values of total invoice

select * from invoice
order by total desc
limit 3 */


/*Q4)which city has the best customer? We would like to*
	throw a promotion music festival in the city we made
	the most money.write a query that return one city that 
	has the height sum of invoice total return both the city 
 name & sum of all invoice total



select sum(total) as invoice_total,billing_city
from invoice 
group by billing_city
order by invoice_total desc*/


/*Q5) Who is ther best customer?
the customer who has spent the most money will be declared the best customer.
	Write a quary  that return the person who has spent the most money

select customer.customer_id,customer.first_name,customer.last_name ,sum(invoice.total) as total
	from customer
join invoice on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total desc
limit 1*/


/*MODERATE LEVEL
/*Q6) write query to return the email,frist name,last anme,
& Genre of all rock music listeners.return your list orderd 
alphabetically by email strarting with A



SELECT DISTINCT customer.email, customer.first_name, customer.last_name
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
WHERE invoice_line.track_id IN (
    SELECT track.track_id 
    FROM track
    JOIN genre ON track.genre_id = genre.genre_id
    WHERE genre.name LIKE 'Rock'
)
ORDER BY customer.email;*/

/*Q7) let's invite the artists who have 
	written the most rox=ck music in our dataset.
	write a query that return the artist name and
	total track count of thetop 10 rock bands


SELECT artist.artist_id, artist.name AS artist_name, COUNT(track.track_id) AS number_of_songs
FROM track
JOIN album ON album.album_id = track.album_id
JOIN artist ON artist.artist_id = album.artist_id
JOIN genre ON genre.genre_id = track.genre_id
WHERE genre.name LIKE 'Rock'
GROUP BY artist.artist_id, artist.name
ORDER BY number_of_songs DESC
LIMIT 10;*/



/*Q8)return all track names that have a song length
	longer than the average song length.return the name
	all millisecond for the each track.
	order by the song length with the longest songs listed frist



SELECT name, milliseconds
FROM track
WHERE milliseconds > (
    SELECT AVG(milliseconds) AS avg_track_length
    FROM track)
ORDER BY milliseconds DESC;*/










