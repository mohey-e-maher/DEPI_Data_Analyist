CREATE TABLE Customer 
(
customer_id varchar primary key ,
customer_name varchar ,
segment varchar ,
age int ,
country varchar ,
city varchar 
) 

COPY Customer from 'D:\DotPy\Data scince\data extraction\sql\Customer.csv' CSV header 

----------------------------------------------------------------------

CREATE TABLE Product 
(
product_id varchar primary key ,
category varchar ,
sub_category varchar ,
product_name varchar 
)

COPY Product from 'D:\DotPy\Data scince\data extraction\sql\Product.csv' CSV header 


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

COPY Sales from 'D:\DotPy\Data scince\data extraction\sql\Sales.csv' CSV header 


----------------------------------------------------------------------


SELECT * FROM customer


SELECT customer_id, age FROM customer



----------------------------------------------------------------------


SELECT customer_name, age FROM customer WHERE age > 40 



----------------------------------------------------------------------

SELECT * FROM sales


----------------------------------------------------------------------

SELECT count(ship_mode) FROM sales WHERE ship_mode = 'Second Class' AND price > 800

----------------------------------------------------------------------

SELECT count(ordeR_id), ship_mode FROM sales GROUP BY ship_mode 


----------------------------------------------------------------------

SELECT COUNT(product_id), product_id FROM sales GROUP BY product_id order by count(product_id)

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










