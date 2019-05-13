-- admin, tester, Develper and user

SELECT User from mysql.user;


-- admin

DROP USER IF EXISTS admin_retail@localhost;

CREATE USER admin_retail@localhost IDENTIFIED BY 'retailadmin';

-- privileages to administrator

grant all on *.* to admin_retail@localhost; 
 show grants for admin_retail@localhost; 


#################################################################

-- Tester

DROP USER IF EXISTS tester_retail@localhost;

CREATE USER tester_retail@localhost IDENTIFIED BY 'retailtester';

-- privileages to tester 

grant all on retail.* to tester_retail@localhost; 
 show grants for tester_retail@localhost; 



#################################################################


-- Developer

DROP USER IF EXISTS dev_retail@localhost;

CREATE USER dev_retail@localhost IDENTIFIED BY 'retaildev';

-- privileages to tester 

grant SELECT on retail.* to dev_retail@localhost; 
show grants for dev_retail@localhost; 



#################################################################


-- customer

 DROP USER IF EXISTS 'customer_retail'@'localhost';


 CREATE USER 'customer_retail'@'localhost' IDENTIFIED BY 'retailcustomer';  
  
-- granting select and update privilages to user

grant select, update on retail.customer to customer_retail@localhost; 
grant select on retail.orders to customer_retail@localhost; 
grant select on retail.order_product to customer_retail@localhost; 
grant select on retail.invoice to customer_retail@localhost;
show grants for customer_retail@localhost; 



 