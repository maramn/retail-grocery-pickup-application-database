-- trigger for decreasing the inventory as orders come in


SELECT * FROM orders;

SELECT * FROM order_product;

SELECT * FROM product_details;

SELECT * FROM employee;

DROP TRIGGER IF EXISTS ps_dec;

DELIMITER $$

CREATE trigger ps_dec 
AFTER INSERT
ON order_product
FOR EACH ROW

BEGIN

UPDATE product_details 
     SET inventory = inventory - NEW.quantity 
      WHERE NEW.product_id = product_details.product_id;


END $$

DELIMITER ;


INSERT INTO orders(user_id, order_date, employee_id) VALUES (15, 2019-04-15, 14 );
INSERT INTO order_product(order_id, product_id, quantity) VALUES (54, 23, 4), (54, 29, 2);




#########################################################################################################

-- trigger to send a notification if any of the items fall below 50

SELECT * FROM orders;

SELECT * FROM order_product;

SELECT * FROM product_details;

DROP TRIGGER IF EXISTS inv_not;

DELIMITER $$

CREATE trigger inv_not
AFTER UPDATE ON product_details
FOR EACH ROW

BEGIN

DECLARE P INT;

SET P = NEW.product_id;

 IF NEW.inventory < 50 THEN
 
 INSERT INTO Notification
 (message, `datetime`)
 
 VALUES ('Is less than 50' , NOW());
 
 
END IF ;


END $$

DELIMITER ;

INSERT INTO orders( user_id, order_date, employee_id) VALUES (15, '2019-04-15', 14 );
INSERT INTO order_product(order_id, product_id, quantity) VALUES ( 55, 27, 1);

SELECT * FROM Notification;

DELETE FROM order_product
WHERE id = 26;

DELETE FROM orders
WHERE order_id = 26;

-- CAST(@P AS CHAR)
#########################################################################################################










