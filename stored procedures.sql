
-- stored procedure for pick list for each order 

DROP PROCEDURE IF EXISTS pick_list;

DELIMITER $$

create procedure pick_list (in order_num INT)

BEGIN

SELECT customer.user_id, customer.`name`, employee.`name` AS 'pick up person', order_product.order_id, order_product.product_id, product_details.`name`, order_product.quantity, product_location.lane_number, product_location.shelf, product_location.shelf_loc
FROM customer JOIN orders ON customer.user_id = orders.user_id 
JOIN employee ON orders.employee_id = employee.employee_id
JOIN order_product ON orders.order_id = order_product.order_id
JOIN product_details ON order_product.product_id = product_details.product_id
JOIN product_location ON product_details.product_location_id = product_location.product_location_id
WHERE order_product.order_id = order_num;

END $$

DELIMITER ;

call pick_list(4);

#######################################################################

DROP procedure if exists inv_gen;

DELIMITER $$

create procedure inv_gen (in order_num INT)

BEGIN


DECLARE T INT;

SELECT SUM(order_product.quantity*product_details.price)
INTO @T
FROM orders JOIN order_product ON orders.order_id = order_product.order_id
JOIN product_details ON order_product.product_id = product_details.product_id
WHERE order_product.order_id = order_num;

INSERT INTO invoice(order_id, total_bill) VALUES (order_num, @T);



END $$

DELIMITER ;

call inv_gen(4);

SELECT * FROM invoice;


