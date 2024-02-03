/* Q1: Who is the senior most employee? */
select * from employee
ORDER BY levels desc  
limit 1;

/* Q2 Which country has the most number of invoices ? */
SELECT COUNT(*)  as invoice_no, billing_country from invoice 
group by billing_country 
order by invoice_no desc ;

/*Q3  What are the top 3 invoice values in dollars ? */
select * from invoice 
ORDER BY total desc 
limit 3 ;

/* Q4 which city has the best customers company wants to throw a music fest for that city dedcide it on the basis of its sale !*/
select SUM(total) as invoice_total, billing_city from invoice 
group by billing_city 
order by invoice_total desc ;

/*Q5 Who is the best customer who has made the maximum number of purchase? */
SELECT
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    SUM(invoice.total) AS total_customer
FROM
    customer
JOIN
    invoice ON customer.customer_id = invoice.customer_id
GROUP BY
    customer.customer_id, customer.first_name, customer.last_name
ORDER BY
    total_customer DESC
limit 1 ;


