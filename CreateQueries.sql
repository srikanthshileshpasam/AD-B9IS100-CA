
CREATE TABLE Manufacturer(
manufacturer_id int not null,
manufacturer_name varchar(100) not null UNIQUE,
manufacturer_address varchar(150) not null,
manufacturer_email varchar(50) not null,
manufacturer_phone varchar(50) not null,
CONSTRAINT manufacturer_id_pk PRIMARY KEY (manufacturer_id) 
)
GO

CREATE TABLE Car_Model(
car_model_id int not null,
car_model_name varchar(50) not null UNIQUE,
car_model_type varchar(50) not null,
car_model_variant xml,
car_model_price int not null,
car_model_year int not null,
manufacturer_id int not null,
CONSTRAINT car_model_id_pk PRIMARY KEY (car_model_id), 
CONSTRAINT manufacturer_id_fk FOREIGN KEY (manufacturer_id)
REFERENCES Manufacturer(manufacturer_id)
)
GO

CREATE TABLE Manufacturer_Order(
manufacturer_order_id int not null,
manufacturer_order_date date not null,
manufacturer_order_price int not null,
car_model_id int not null,
CONSTRAINT manufacturer_order_id_pk PRIMARY KEY (manufacturer_order_id), 
CONSTRAINT car_model_id_fk FOREIGN KEY (car_model_id)
REFERENCES Car_Model(car_model_id)
)
GO

CREATE TABLE Customer(
customer_id varchar(50) not null,
customer_name varchar(100) not null,
customer_address xml,
customer_phone varchar(50) not null,
CONSTRAINT customer_id_pk PRIMARY KEY (customer_id) 
)
GO


CREATE TABLE Employee(
employee_id varchar(50) not null,
employee_name varchar(100) not null,
employee_designation varchar(50) not null,
employee_address xml,
employee_dob date not null,
employee_pps_number varchar(100) not null,
employee_salary int not null,
CONSTRAINT employee_id_pk PRIMARY KEY (employee_id) 
)
GO

CREATE TABLE Customer_Order(
customer_order_id int not null,
customer_order_date date not null,
customer_order_delivery_date date not null,
customer_order_selling_price int not null,
customer_id varchar(50) not null,
employee_id varchar(50) not null,
CONSTRAINT customer_order_id_pk PRIMARY KEY (customer_order_id), 
CONSTRAINT customer_id_fk FOREIGN KEY (customer_id)
REFERENCES Customer(customer_id),
CONSTRAINT employee_id_fk1 FOREIGN KEY (employee_id)
REFERENCES Employee(employee_id)
)
GO

CREATE TABLE Incentive(
incentive_id int not null,
incentive_amount int,
incentive_date date not null,
employee_id varchar(50) not null,
CONSTRAINT incentive_id_pk PRIMARY KEY (incentive_id),
CONSTRAINT employee_id_fk2 FOREIGN KEY (employee_id)
REFERENCES Employee(employee_id) 
)
GO

CREATE TABLE Inventory(
inventory_id int not null,
inventory_date date not null,
inventory_status varchar(10) not null,
manufacturer_order_id int not null,
customer_order_id int,
CONSTRAINT inventory_id_pk PRIMARY KEY (inventory_id), 
CONSTRAINT manufacturer_order_id_fk FOREIGN KEY (manufacturer_order_id)
REFERENCES Manufacturer_Order(manufacturer_order_id),
CONSTRAINT customer_order_id_fk FOREIGN KEY (customer_order_id)
REFERENCES Customer_Order(customer_order_id),
)
GO


CREATE TABLE Customer_Order_Log(
order_id int not null  PRIMARY KEY,
order_time date not null,
customer_id varchar(50) not null,
employee_id varchar(50) not null,
customer_order_selling_price int not null,
)

