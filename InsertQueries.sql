
-- Insert Manufacturer
GO
CREATE SEQUENCE SEQ_MANUFACTURER_ID START WITH 1 INCREMENT BY 1;

GO
SELECT * FROM Manufacturer
GO
INSERT INTO Manufacturer VALUES (NEXT VALUE FOR SEQ_MANUFACTURER_ID,'Ferrari','Maranello,Italy','ferraicars@gmail.com','1800553946')
INSERT INTO Manufacturer VALUES (NEXT VALUE FOR SEQ_MANUFACTURER_ID,'Mercedes','Stuttgrad,Germany','mercedesinfo@gmail.com','080097777777')
INSERT INTO Manufacturer VALUES (NEXT VALUE FOR SEQ_MANUFACTURER_ID,'BMW','Munich,Germany','bmw@gmail.com','49893820')
INSERT INTO Manufacturer VALUES (NEXT VALUE FOR SEQ_MANUFACTURER_ID,'Porsche','Stuttgrad,Germany','porsche@gmail.com','498756223')
INSERT INTO Manufacturer VALUES (NEXT VALUE FOR SEQ_MANUFACTURER_ID,'Tata','Mumbai,India','tata@gmail.com','18002582553')
INSERT INTO Manufacturer VALUES (NEXT VALUE FOR SEQ_MANUFACTURER_ID,'Micro','Colombo,Sri Lanka','micro@msn.com','94089554416')

-- Insert Car_Model

GO
CREATE SEQUENCE SEQ_CAR_MODEL_ID START WITH 1 INCREMENT BY 1;

INSERT INTO Car_Model VALUES (NEXT VALUE FOR SEQ_CAR_MODEL_ID,'F8 Tributo','Sports','','1200000','2016','1')
INSERT INTO Car_Model VALUES (NEXT VALUE FOR SEQ_CAR_MODEL_ID,'S-Class','Luxury','','500000','2014','2')
INSERT INTO Car_Model VALUES (NEXT VALUE FOR SEQ_CAR_MODEL_ID,'X-5','Sports','','900000','2018','3')
INSERT INTO Car_Model VALUES (NEXT VALUE FOR SEQ_CAR_MODEL_ID,'718 Cayman','Sports','','600000','2015','4')
INSERT INTO Car_Model VALUES (NEXT VALUE FOR SEQ_CAR_MODEL_ID,'Nano','Hatch back','','50000','2011','5')
INSERT INTO Car_Model VALUES (NEXT VALUE FOR SEQ_CAR_MODEL_ID,'Panda','Sedan','','50000','2015','6')

INSERT INTO Car_Model VALUES (NEXT VALUE FOR SEQ_CAR_MODEL_ID,'Spyder','Sports','','1000000','2014','1')
INSERT INTO Car_Model VALUES (NEXT VALUE FOR SEQ_CAR_MODEL_ID,'M-Class','Sedan','','400000','2012','2')
INSERT INTO Car_Model VALUES (NEXT VALUE FOR SEQ_CAR_MODEL_ID,'X-4','SUV','','700000','2017','3')
INSERT INTO Car_Model VALUES (NEXT VALUE FOR SEQ_CAR_MODEL_ID,'718 Boxter','Sports','','400000','2013','4')
INSERT INTO Car_Model VALUES (NEXT VALUE FOR SEQ_CAR_MODEL_ID,'Sumo','SUV','','60000','2006','5')
INSERT INTO Car_Model VALUES (NEXT VALUE FOR SEQ_CAR_MODEL_ID,'MX-7','Sedan','','80000','2017','6')


-- Insert Employee OVDE1000

GO
CREATE SEQUENCE SEQ_EMPLOYEE_ID START WITH 1000 INCREMENT BY 1;

INSERT INTO Employee VALUES (CONCAT('OVDE', NEXT VALUE FOR SEQ_EMPLOYEE_ID),'Manik Mahashabde','Salesman','','1993-11-06','2341897AS','20000')
INSERT INTO Employee VALUES (CONCAT('OVDE',NEXT VALUE FOR SEQ_EMPLOYEE_ID),'Kumuditha Athukorala','Salesman','','1990-03-05','1233198ER','10000')
INSERT INTO Employee VALUES (CONCAT('OVDE',NEXT VALUE FOR SEQ_EMPLOYEE_ID),'Vint Sawant','Salesman','','1994-09-11','3452789XC','15000')
INSERT INTO Employee VALUES (CONCAT('OVDE',NEXT VALUE FOR SEQ_EMPLOYEE_ID),'Srikanth Pasam','Salesman','','1993-12-01','8967845BD','20000')
INSERT INTO Employee VALUES (CONCAT('OVDE',NEXT VALUE FOR SEQ_EMPLOYEE_ID),'Deep Singh','Salesman','','1995-05-11','5674389AS','12000')
INSERT INTO Employee VALUES (CONCAT('OVDE',NEXT VALUE FOR SEQ_EMPLOYEE_ID),'Salman Bhatt','Salesman','','1996-06-23','4563098AS','18000')
INSERT INTO Employee VALUES (CONCAT('OVDE',NEXT VALUE FOR SEQ_EMPLOYEE_ID),'Salman Khan','Manager','','1986-07-23','4563098HS','80000')


-- Insert Incentive

GO
CREATE SEQUENCE SEQ_INCENTIVE_ID START WITH 1 INCREMENT BY 1;

INSERT INTO Incentive VALUES (NEXT VALUE FOR SEQ_INCENTIVE_ID,'1800','2019-11-01','OVDE1005')
INSERT INTO Incentive VALUES (NEXT VALUE FOR SEQ_INCENTIVE_ID,'1200','2019-11-03','OVDE1004')
INSERT INTO Incentive VALUES (NEXT VALUE FOR SEQ_INCENTIVE_ID,'2000','2019-11-06','OVDE1003')
INSERT INTO Incentive VALUES (NEXT VALUE FOR SEQ_INCENTIVE_ID,'1500','2019-11-10','OVDE1002')
INSERT INTO Incentive VALUES (NEXT VALUE FOR SEQ_INCENTIVE_ID,'1000','2019-10-21','OVDE1001')
INSERT INTO Incentive VALUES (NEXT VALUE FOR SEQ_INCENTIVE_ID,'2000','2019-10-29','OVDE1000')



-- Insert Customer

GO
CREATE SEQUENCE SEQ_CUSTOMER_ID START WITH 1000000 INCREMENT BY 1;

INSERT INTO Customer VALUES (CONCAT('OVDC',NEXT VALUE FOR SEQ_CUSTOMER_ID),'Chaminda Vass','','09411290901')
INSERT INTO Customer VALUES (CONCAT('OVDC',NEXT VALUE FOR SEQ_CUSTOMER_ID),'Virat Kohli','','09188134541')
INSERT INTO Customer VALUES (CONCAT('OVDC',NEXT VALUE FOR SEQ_CUSTOMER_ID),'VVS Laxman','','09190987609')
INSERT INTO Customer VALUES (CONCAT('OVDC',NEXT VALUE FOR SEQ_CUSTOMER_ID),'Sachin Tendulkar','','09112122211')
INSERT INTO Customer VALUES (CONCAT('OVDC',NEXT VALUE FOR SEQ_CUSTOMER_ID),'Wasim Akram','','09013454321')
INSERT INTO Customer VALUES (CONCAT('OVDC',NEXT VALUE FOR SEQ_CUSTOMER_ID),'Mohomad Hafeez','','09023097895')


-- Insert Customer_Order


GO
CREATE SEQUENCE SEQ_CUSTOMER_ORDER_ID START WITH 1 INCREMENT BY 1;

INSERT INTO Customer_Order VALUES (NEXT VALUE FOR SEQ_CUSTOMER_ORDER_ID,'2019-09-10','2019-09-17','430000','OVDC1000001','OVDE1000')
INSERT INTO Customer_Order VALUES (NEXT VALUE FOR SEQ_CUSTOMER_ORDER_ID,'2019-08-10','2019-08-20','750000','OVDC1000004','OVDE1002')
INSERT INTO Customer_Order VALUES (NEXT VALUE FOR SEQ_CUSTOMER_ORDER_ID,'2019-10-03','2019-10-10','1100000','OVDC1000000','OVDE1003')
INSERT INTO Customer_Order VALUES (NEXT VALUE FOR SEQ_CUSTOMER_ORDER_ID,'2019-09-20','2019-09-27','660000','OVDC1000003','OVDE1005')
INSERT INTO Customer_Order VALUES (NEXT VALUE FOR SEQ_CUSTOMER_ORDER_ID,'2019-09-11','2019-09-18','84000','OVDC1000002','OVDE1004')
INSERT INTO Customer_Order VALUES (NEXT VALUE FOR SEQ_CUSTOMER_ORDER_ID,'2019-09-15','2019-09-25','55000','OVDC1000005','OVDE1001')


-- Insert Manufacturer_Order

GO
CREATE SEQUENCE SEQ_MANUFACTURER_ORDER_ID START WITH 1 INCREMENT BY 1;

INSERT INTO Manufacturer_Order VALUES (NEXT VALUE FOR SEQ_MANUFACTURER_ORDER_ID,'2019-08-08','1200000','1')
INSERT INTO Manufacturer_Order VALUES (NEXT VALUE FOR SEQ_MANUFACTURER_ORDER_ID,'2019-09-01','50000','6')
INSERT INTO Manufacturer_Order VALUES (NEXT VALUE FOR SEQ_MANUFACTURER_ORDER_ID,'2019-08-01','600000','4')
INSERT INTO Manufacturer_Order VALUES (NEXT VALUE FOR SEQ_MANUFACTURER_ORDER_ID,'2019-09-11','50000','5')
INSERT INTO Manufacturer_Order VALUES (NEXT VALUE FOR SEQ_MANUFACTURER_ORDER_ID,'2019-08-25','500000','2')
INSERT INTO Manufacturer_Order VALUES (NEXT VALUE FOR SEQ_MANUFACTURER_ORDER_ID,'2019-09-08','900000','3')

--Insert Inventory
GO
CREATE SEQUENCE SEQ_INVENTORY_ID START WITH 1 INCREMENT BY 1;

INSERT INTO Inventory VALUES (NEXT VALUE FOR SEQ_INVENTORY_ID,'2019-08-10','AVAILABLE','1',null)
INSERT INTO Inventory VALUES (NEXT VALUE FOR SEQ_INVENTORY_ID,'2019-09-02','AVAILABLE','2',null)
INSERT INTO Inventory VALUES (NEXT VALUE FOR SEQ_INVENTORY_ID,'2019-08-05','SOLD','3','5')
INSERT INTO Inventory VALUES (NEXT VALUE FOR SEQ_INVENTORY_ID,'2019-09-14','SOLD','4','3')
INSERT INTO Inventory VALUES (NEXT VALUE FOR SEQ_INVENTORY_ID,'2019-08-29','AVAILABLE','5',null)
INSERT INTO Inventory VALUES (NEXT VALUE FOR SEQ_INVENTORY_ID,'2019-09-15','SOLD','6','1')

SELECT * FROM Customer