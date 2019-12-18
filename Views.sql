

--View 1

CREATE VIEW view_order_taken
AS
SELECT e.employee_id, e.employee_name,e.employee_dob,count(co.customer_order_id) as ordertaken
FROM Employee e 
INNER JOIN Customer_Order co
ON e.employee_id = co.employee_id
group by e.employee_id, e.employee_name,e.employee_dob


select * from view_order_taken where employee_id='OVDE1000';


--View 2

CREATE VIEW customer_order_track
As
SELECT c.customer_id,cm.car_model_name,m.manufacturer_name,co.customer_order_selling_price,mo.manufacturer_order_price,
 (co.customer_order_selling_price - mo.manufacturer_order_price) as Profit_Earned
from Customer c
inner join Customer_Order co 
ON c.customer_id = co.customer_id
inner join Inventory i
ON co.customer_order_id=i.customer_order_id
inner join manufacturer_order mo
ON i.manufacturer_order_id= mo.manufacturer_order_id
inner join car_model cm
ON cm.car_model_id= mo.car_model_id
inner join manufacturer m
ON m.manufacturer_id=cm.manufacturer_id


select * from customer_order_track ;