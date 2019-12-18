
-- Task 01

CREATE PROC uspCustomer_Order_Details_with_Id
@id varchar(50)
AS
SELECT *
FROM Customer c 
INNER JOIN Customer_Order co
ON c.customer_id = co.customer_id
WHERE c.customer_id LIKE @id +'%'
GO

EXEC uspCustomer_Order_Details_with_Id 'OVDC1000000'
GO

-- Task 02

CREATE PROC uspEmployee_Performance
@price int
AS
SELECT e.employee_id, e.employee_name, SUM(co.customer_order_selling_price) AS Total_Sales
FROM Employee e 
INNER JOIN Customer_Order co
ON e.employee_id = co.employee_id
GROUP BY e.employee_id, e.employee_name
HAVING SUM(co.customer_order_selling_price) > @price
GO

EXEC uspEmployee_Performance 60000
GO

-- Task 03

CREATE function fn_Calc_Incentive(@salary as int)
returns float
AS
BEGIN
DECLARE @incentive as float

		SET @incentive = @salary * 0.1
	
 RETURN @incentive
END
GO

CREATE PROC uspCall_fn_Calc_Incentive
@sal int
AS
SELECT dbo.fn_Calc_Incentive(@sal) AS Incentive_Amount
GO

EXEC uspCall_fn_Calc_Incentive 20000


--Task 04 - 

CREATE PROC uspXML_CUSTOMER_ORDERS
AS
SELECT Customer.customer_id,car_model.car_model_name,manufacturer.manufacturer_name,customer_order.customer_order_selling_price,manufacturer_order.manufacturer_order_price
from Customer 
inner join Customer_Order 
ON Customer.customer_id = Customer_Order.customer_id
inner join Inventory
ON Customer_Order.customer_order_id=Inventory.customer_order_id
inner join manufacturer_order 
ON Inventory.manufacturer_order_id= manufacturer_order.manufacturer_order_id
inner join car_model 
ON manufacturer_order.car_model_id= car_model.car_model_id
inner join manufacturer 
ON manufacturer.manufacturer_id=car_model.manufacturer_id
FOR XML RAW, ELEMENTS, ROOT('ORDER');

exec uspXML_CUSTOMER_ORDERS;

--Task 05

CREATE PROC uspCar_Model_Details
@modelType varchar(50)
AS 
SELECT c.car_model_name, c.car_model_price, c.car_model_type, c.car_model_variant, m.manufacturer_name
FROM Car_Model c
INNER JOIN Manufacturer m
on c.manufacturer_id = m.manufacturer_id
WHERE c.car_model_type = @modelType
GO

EXEC uspCar_Model_Details sports

--Task 06

CREATE PROC uspUpdate_Emplyee_Address
@empId varchar(50),
@st varchar(50)
AS
UPDATE Employee 
SET employee_address.modify('replace value of (/Address/Street/text())[1] with sql:variable("@st")')
WHERE
   employee_id = @empId

EXEC uspUpdate_Emplyee_Address 'OVDE1000','Botanic'

--Task 07

CREATE PROC uspCarSeats 
@seating varchar(50)
AS
SELECT * 
FROM Car_Model 
WHERE car_model_variant.value('(/Variant/SeatingCapacity)[1]', 'varchar(100)') LIKE @seating

EXEC uspCarSeats 2

