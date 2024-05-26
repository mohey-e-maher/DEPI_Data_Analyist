CREATE TABLE Customer 
(
customer_id varchar primary key ,
customer_name varchar ,
segment varchar ,
age int ,
country varchar ,
city varchar 
) 

COPY Customer from 'F:\Courses\SQL\Data\Data\Customer.csv' CSV header 

----------------------------------------------------------------------

CREATE TABLE Product 
(
product_id varchar primary key ,
category varchar ,
sub_category varchar ,
product_name varchar 
)

COPY Product from 'F:\Courses\SQL\Data\Data\Product.csv' CSV header 


----------------------------------------------------------------------


CREATE TABLE Sales 
(
order_line int primary key ,
order_id varchar ,
order_date date ,
ship_date date ,
ship_mode varchar ,
customer_id varchar ,
product_id varchar ,
price numeric ,
quantity int ,
discount numeric ,
profit numeric 
)

COPY Sales from 'F:\Courses\SQL\Data\Data\Sales.csv' CSV header 


----------------------------------------------------------------------


SELECT * 
FROM customer

SELECT customer_id, age  
FROM customer


----------------------------------------------------------------------


SELECT customer_name, age
FROM customer 
WHERE age > 40 

----------------------------------------------------------------------


SELECT count(*) 
FROM sales 
WHERE ship_mode = 'Second Class' AND price > 800

----------------------------------------------------------------------

SELECT ship_mode, 
		count(ordeR_id) 
FROM sales 
GROUP BY ship_mode 
HAVING count(order_id) > 1600

----------------------------------------------------------------------

SELECT customer_name, 
		sum(price) as price, 
		ship_mode
FROM customer 
INNER JOIN sales 
ON customer.customer_id = sales.customer_id 
WHERE sales.ship_mode = 'Second Class'
GROUP BY customer_name, ship_mode

----------------------------------------------------------------------

SELECT product_id, 
		sum(price), 
		max(price), 
		min(price), 
		avg(price), 
		sum(quantity), 
		count(order_id) 
from sales 
GROUP BY product_id 
order by product_id

----------------------------------------------------------------------

SELECT *,
CASE WHEN age<30 THEN 'Young'
	 WHEN age>60 THEN 'Senior Citizen'
	 ELSE 'Middle aged'
END AS Age_category 
FROM customer

----------------------------------------------------------------------

