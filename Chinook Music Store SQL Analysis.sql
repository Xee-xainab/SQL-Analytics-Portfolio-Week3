----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
--Project:Chinook Music Store SQL Analysis
--Author:Danjuma Zainab
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------


--1. Total Revenue
SELECT SUM(total) AS Total_Revenue
FROM invoice;


--2. Total Customers
SELECT COUNT(customer_id) AS Total_Customers
FROM customer;


--3. Total Employees
SELECT COUNT(*) AS Total_Employees
FROM employee;


--4. Revenue by country
SELECT billing_country AS Country,
		SUM(total) AS Revenue
FROM invoice 
GROUP BY billing_country 
ORDER BY Revenue DESC;


--5. Number of invoice by country
SELECT billing_country AS Country,
		COUNT(*) AS Total_Invoices
FROM invoice 
GROUP BY country 
ORDER BY Total_invoices DESC;

--6. Top 10 customers
SELECT c.first_name,
	   c.last_name,
	   SUM(i.total) AS Revenue
FROM customer c
JOIN invoice i 
ON c.customer_id=i.customer_id 
GROUP BY c.first_name,
	   c.last_name
ORDER BY SUM(total) DESC 
LIMIT 10;

--7. Top selling Tracks
SELECT t.name AS Track_name,
		SUM(il.quantity) AS Total_Sold
FROM track t
JOIN invoice_line il 
ON t.track_id=il.track_id 
GROUP BY t.name
ORDER BY SUM(il.quantity) DESC 
LIMIT 10;

--8. Best selling Artists
SELECT a.name AS Artist,
		al.title,
		SUM(il.unit_price*il.quantity) AS Revenue
FROM artist a 
JOIN album al
ON a.artist_id =al.artist_id 
JOIN track t  
ON al.album_id =t.album_id 
JOIN invoice_line il 
ON t.track_id =il.track_id 
GROUP BY a.name,
		al.title
ORDER BY Revenue DESC;

--9. Top Genre
SELECT g.name AS Genre,
		SUM(il.unit_price*il.quantity) AS Revenue
FROM genre g 
JOIN track t 
ON g.genre_id =t.genre_id 
JOIN invoice_line il 
ON t.track_id =il.track_id 
GROUP BY g.name
ORDER BY Revenue DESC;

--10. Rank customer by revenue 
SELECT c.customer_id,
		c.first_name,
		c.last_name,
		SUM(i.total) AS Revenue,
		RANK() OVER(ORDER BY SUM(i.total) DESC) AS Cutomer_Rank
FROM customer c 
JOIN invoice i
ON c.customer_id =i.customer_id 
GROUP BY c.customer_id,
		c.first_name,
		c.last_name;

--11. Customer Spending above average
SELECT
c.customer_id,
c.first_name,
c.last_name,
SUM(i.Total) AS Revenue
FROM Customer c
JOIN Invoice i
ON c.customer_id =i.customer_id 
GROUP BY c.customer_id ,c.first_name,c.last_name 
HAVING SUM(i.Total) >
(
SELECT AVG(Customer_Total)
FROM
(
SELECT SUM(Total) AS Customer_Total
FROM Invoice
GROUP BY customer_id
) x
);




































