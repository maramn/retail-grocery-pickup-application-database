use retail;

#Top 5 customer who spend more 
DROP view if exists top5;

CREATE view top5 AS
select customer.name, sum(order_product.quantity* product_details.price) as total_spending
from customer
join orders 
on customer.user_id = orders.user_id
join order_product 
on orders.order_id = order_product.order_id
join product_details
on order_product.product_id = product_details.product_id 
group by customer.name
order by total_spending desc limit 5;


SELECT * FROM top5; 


#today's sales 

DROP view if exists todaysales;

CREATE view todaysales AS

SELECT `orders`.`order_date`, orders.order_id, SUM(order_product.quantity * product_details.price) AS sale
FROM orders 
JOIN order_product 
ON orders.order_id = order_product.order_id
JOIN product_details
ON order_product.product_id = product_details.product_id
WHERE day(orders.`order_date`) = day(now())
GROUP BY  orders.order_id
order by sale desc;

SELECT * FROM todaysales;




#total number of pickup by an employee
DROP view if exists pickups;

CREATE view pickups AS

select employee.`name`, count(orders.employee_id) as total_pickups 
from employee
join orders
on  employee.employee_id = orders.employee_id
group by employee.`name`
order by total_pickups desc;

SELECT * FROM pickups;














