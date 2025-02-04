Q1.Who is the senior most employee based on the job title ?

SELECT * FROM employee
ORDER BY levels desc
LIMIT 1

Q2.Which country have the most invoices ?

SELECT * FROM invoice
SELECT COUNT(*) AS  c  ,billing_country
FROM invoice
GROUP BY billing_country
ORDER BY c desc

Q3. what are top 3 values of total invoice ?

SELECT total FROM invoice
ORDER BY total desc
LIMIT 3 

Q4. Which city has the best customer ?We would like to throw a promotional Music  festival in the city we made the most money . write a query that returns one cuty that has the highest sum of invoice totals.Return both the city name and sum of all invoice totals 

SELECT * FROM invoice
SELECT SUM(total) AS invoice_total , billing_city
FROM invoice
GROUP BY billing_city
ORDER BY invoice_total desc

Q5.who is the best customer ? The customer who has spent the most money will be declared the best customer .write a query tha returns the person who has spent the most money.
1 here we will connect the two table that is customer or invoice

SELECT *FROM customer

SELECT customer.customer_id , customer.first_name ,customer.last_name ,SUM(invoice.total) AS total
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY total DESC
LIMIT 1











