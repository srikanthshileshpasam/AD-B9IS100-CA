
-- 01- instead

Create TRIGGER triggerAddCustomerOrder
ON Customer_Order
INSTEAD OF INSERT
AS
BEGIN
DECLARE @order_time date
DECLARE @customer_order_delivery_date date
DECLARE @customer_order_selling_price int
DECLARE @customer_order_date date
DECLARE @customer_id varchar(50)
DECLARE @employee_id varchar(50)
DECLARE @cur_val int = NEXT VALUE FOR SEQ_CUSTOMER_ORDER_ID

SELECT @order_time = GETDATE() 
SELECT @customer_order_date =i.customer_order_date FROM inserted i
SELECT @customer_order_delivery_date=i.customer_order_delivery_date FROM inserted i
SELECT @customer_order_selling_price =i.customer_order_selling_price FROM inserted i
SELECT @customer_id = i.customer_id FROM inserted i
SELECT @employee_id = i.employee_id FROM inserted i
IF EXISTS (SELECT customer_order_id FROM Customer_Order WHERE customer_order_id = @cur_val)
	BEGIN
		PRINT('Error, Order already exists') 
	END
ELSE
	BEGIN
		INSERT INTO Customer_Order VALUES (@cur_val,@customer_order_date,@customer_order_delivery_date,@customer_order_selling_price,@customer_id,@employee_id)
		PRINT('Order Added') 
		INSERT INTO dbo.Customer_Order_Log VALUES (@cur_val, @order_time, @customer_id, @employee_id,@customer_order_selling_price)	
		PRINT('Order Added to Log Table') 
	END
END

INSERT INTO Customer_Order 
(customer_order_date, customer_order_delivery_date, customer_order_selling_price, customer_id, employee_id)
VALUES ('2019-09-16','2019-09-27','85000','OVDC1000005','OVDE1003')

-- 02 After


Create TRIGGER TriggerAddIncentive
ON Incentive
AFTER INSERT
AS
BEGIN
DECLARE @incentive_id int
DECLARE @incentive_date date
DECLARE @employee_id varchar(50)
DECLARE @salary int 


SELECT @incentive_id = i.incentive_id FROM inserted i
SELECT @incentive_date = i.incentive_date FROM inserted i
SELECT @employee_id = i.employee_id FROM inserted i

SELECT @salary = (SELECT employee_salary FROM Employee WHERE employee_id = @employee_id)
PRINT(@salary)

UPDATE Incentive
SET incentive_amount = dbo.fn_Calc_Incentive(@salary)
WHERE incentive_id = @incentive_id 
PRINT ('Incentive Added')
END


INSERT INTO Incentive (incentive_id,incentive_date, employee_id) 
VALUES (NEXT VALUE FOR SEQ_INCENTIVE_ID,'2019-10-29','OVDE1003')
GO

SELECT * FROM Customer_Order_Log