CREATE DATABASE mini_capstone_project;

USE mini_capstone_project;

CREATE TABLE Suppliers
( 
	supplier_id int primary key,
    supplier_name varchar(355),
    other_supplier_details varchar(400)
);

INSERT INTO Suppliers(supplier_id,supplier_name,other_supplier_details)
VALUES
(10,'NinJakart', 'Null'),
(20,'Modern Electonics', 'Flipkart'),
(30,'Infiity electrics Service','Amazon'),
(40,'Croma India','Amazon,Flipkart'),
(50, 'pizza centre','null');

SELECT * FROM suppliers;

INSERT INTO Suppliers(supplier_id, supplier_name, other_supplier_details)
VALUES
(60,'Kishan Konnect', 'Fruits & Vegetable'),
(70,'Panasonic India','Home Appliances'),
(80,'TVS Supply Chain','Spare Parts'),
(90,'KSH Logistics','Logistics'),
(100,'Yamaha automotive','Automobile');

/*----------------------------------Customer Table----------------------------------------------------------*/

CREATE TABLE customers
(
	customer_id int primary key,
	customer_name varchar(400),
	customer_phone varchar(50) not null,
	customer_email varchar(80) unique not null,
	other_customer_details varchar(500)
);

INSERT INTO customers(customer_id, customer_name, customer_phone, customer_email, other_customer_details)
VALUES
(101,'Shams Irshad','98-81998647-70','shams@gmail.com','working'),
(102,'Jayvan Kumar','82-78852255852','jay@gmail.com','graduate'),
(103,'Kishan Kumar','93-45555555','kishan@gmail.com','post graduate'),
(104,'Minhaz Alam','84-725854654','minhaz@gmail.com','government'),
(105,'Nirbhay','8-85647852222','nirbhay@gmail.com','business'),
(106,'Aftab Alam','78888-4552','afteab@gmail.com','shop'),
(107,'Yash Karandhikar','892-22222222','yash@gmail.com','yuotuber'),
(108,'vijay togarge','586-44444','vijay@outlook.com','IT'),
(109,'anurag kashyap','4589-85266','anurag@gmail.com','cricketer'),
(110,'Rahul Dravid','45875544255','dravid@gmail.com','actor');

SELECT * FROM customers;

/*------------------------------------Addresses Table-------------------------------------------------------*/
CREATE TABLE Addresses
(
	address_id int primary key unique,
	line_1_number_building varchar(20) not null,
	line_2_number_street varchar(20) not null,
	line_3_area_locality varchar(50)not null,
	city varchar(50) not null,
	Zip_postcode int not null,
	state_province_county varchar(150) not null,
	iso_country_code varchar(80),
	other_address_details varchar(80)
);

INSERT INTO Addresses (address_id, line_1_number_building,line_2_number_street, line_3_area_locality, city,
						Zip_postcode, state_province_county, iso_country_code, other_address_details)
VALUES
(1001,'200A','2A','Warje','Pune',411058,'Maharashtra','+91','India'),
(1002,'300B','3B','Wagholi','Pune',411027,'Maharashtra','+91','India'),
(1003,'300A','3C','Lakarmara','Godda',814160,'Jharkhand','+92','USA'),
(1004,'400A','4D','delhi','Washington',65821,'USA','+45','USA'),
(1005,'500E','4D','','london',5276,'newyork','+21','UK'),
(1006,'600G','56F','Dongri','Mumbai',911058,'Mumbai','+15','India'),
(1007,'700A','4D','Jalgaon','Washington',65821,'USA','+45','USA'),
(1009,'800A','8D','Doi','Mahagama',858965,'godaa','+25','Dubai'),
(1010,'900B','9D','madrid','Finland',62001,'krwen','+051','USA'),
(1011,'100G','10F','Jalanhar','uttaarakhand',52135,'uttarkhand','+105','UAE');

UPDATE Addresses SET line_3_area_locality='VimanNagar' WHERE address_id=1005;

SELECT * FROM Addresses;

/*--------------------------------------- Products Table----------------------------------------------------
----Getting error----Require key confirmation------*/
CREATE TABLE products
(
	product_id int primary key,
	product_type_code varchar(40),
	supplier_id int not null,
	product_price int,
	other_product_details varchar(100)
);

SELECT * FROM products;
SELECT * FROM suppliers;
INSERT INTO products(product_id,product_type_code,supplier_id,product_price, other_product_details)
VALUES
(301,20,20,1500,'Electronics'),
(302,50,10,1150,'Electronics'),
(303,10,70,1200,'spare parts'),
(304,20,60,1250,'Fruits & Vegetable'),
(305,30,50,1250,'Home Appliances'),
(311,40,30,1300,'Fruits & Vegetable'),
(306,70,80,1400,'Pizza'),
(307,90,20,1450,'Fruits & Vegetable'),
(308,60,40,1550,'Medical Equipments'),
(309,50,100,1650,'Fruits & Vegetable'),
(310,20,70,1750,'Spare Parts');

/*----------------------------------Customers Orders Table--------------------------------------------------*/
CREATE TABLE Customer_orders
(
	order_id int unique primary key,
	customer_id int not null,
	customer_payment_method_id int,
	order_status_code varchar(50),
	date_order_placed  date not null,
	date_order_paid date not null,
	der_order_price int,
	other_order_details varchar(200)
);
		
INSERT INTO customer_orders(order_id,customer_id,customer_payment_method_id,order_status_code,
date_order_placed,date_order_paid,der_order_price,other_order_details)
VALUES
(602,102,103,104,'2020-11-18','2020-11-19',450,'Books'),
(603,103,105,105,'2020-11-10','2020-11-11',4511,'CDs'),
(604,104,104,110,'2020-01-10','2020-01-12',550,'Coffee'),
(605,105,106,101,'2020-11-18','2020-11-19',4550,'Electronics'),
(606,106,107,103,'2020-10-14','2020-11-15',250,'Fruits'),
(607,107,108,105,'2020-11-20','2020-11-22',350,'Books'),
(608,108,109,103,'2020-11-25','2020-11-26',14550,'Home Appliance'),
(609,109,107,106,'2020-11-27','2020-11-28',24550,'Mobile'),
(610,110,108,109,'2020-11-05','2020-11-06',3550,'Electronics'),
(611,108,106,101,'2020-11-18','2020-11-29',1550,'Kitchen Appliance');

SELECT * FROM customer_orders;	

/*---------------------------------Customer Addresses Table-----------------------------------------------*/
CREATE TABLE customer_Addresses
(
	customer_id int unique, -- primary key
	Foreign key (customer_id) references customers(customer_id),
	address_id int unique  not null,-- primary key, 
	foreign key (address_id) references Addresses(address_id),
	date_from date, -- primary key,
	address_type_code int not null,
	foreign key (address_type_code) references Addresses(address_id),
	date_to date,
	constraint PK_customer_Addresses Primary key(customer_id,address_id,date_from)
	-- CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
);

SELECT * FROM customer_Addresses;

INSERT INTO customer_addresses(customer_id,address_id,date_from,address_type_code,date_to)
values
(102,1001,'2021-01-20',1001,'2021-01-20'),
(101,1002,'2021-11-22',1003,'2021-11-23'),
(103,1004,'2021-12-04',1005,'2021-12-06'),
(104,1005,'2021-12-08',1010,'2021-12-09'),
(105,1006,'2021-12-12',1007,'2021-12-13'),
(106,1003,'2021-12-16',1007,'2021-12-17'),
(107,1007,'2021-12-07',1010,'2021-12-08'),
(109,1009,'2021-12-11',1006,'2021-12-14'),
(110,1010,'2021-09-04',1009,'2021-09-06');


/*---------------------------------------Customer_order_Products Table-------------------------------------*/
CREATE TABLE Customer_Orders_Products
(
	order_id int not null unique,
	foreign key (order_id) references Customer_orders(order_id),
	product_id int not null unique,
	foreign key (product_id) references products(product_id),
	quantity int not null,
	comments varchar(150),
    Constraint PK_Customer_Orders_Products primary key (order_id,product_id)
);

SELECT * FROM Customer_Orders_Products; 
INSERT INTO customer_orders_Products (order_id,product_id,quantity,comments)
VALUES
(601,301,18,'Required urgently'),
(602,302,19,'Electronics'),
(603,303,21,'Fruits & Vegetable'),
(604,304,100,'transmitter'),
(605,305,40,'Mobile'),
(606,306,25,'Electronics'),
(607,307,10,'Furniture'),
(608,308,90,'Home Appliances'),
(609,309,100,'Shoes'),
(610,310,41,'Clothes');

/*-------------------------------------Customer_Orders_Delivery--------------------------------------------*/
CREATE TABLE Customer_Orders_Delivery
(
	order_id int not null, 
	foreign key(order_id) references Customer_orders(order_id),
	date_reported date not null,
	delivery_status_code int not null,
	foreign key(delivery_status_code) references Customer_orders(order_id),
	constraint PK_Customer_Orders_Delivery primary key (order_id,date_reported)
);

SELECT * FROM Customer_Orders_Delivery;

INSERT INTO Customer_Orders_Delivery(order_id,date_reported,delivery_status_code)
values
(601,'2021-03-10',610),
(602,'2021-03-11',609),
(603,'2021-03-12',610),
(604,'2021-03-13',608),
(605,'2021-03-14',607),
(606,'2021-03-15',606),
(607,'2021-03-16',605),
(608,'2021-03-17',604),
(609,'2021-03-18',603),
(610,'2021-03-19',602);


/*-----------------------------------Ref_Address_Types------------------------------------------------------*/

CREATE TABLE Ref_Address_Types
(
	address_type_code int primary key,
	address_type_description varchar(100) not null
);

SELECT * FROM Ref_Address_Types;
INSERT INTO Ref_Address_Types(address_type_code, address_type_description)
VALUES 
(901,'Billing Address'),
(902,'Resience Address'),
(903,'Delivery Address'),
(904,'Office Address'),
(905,'Delivery Address'),
(906,'Home Address'),
(907,'Restaurant Address'),
(908,'Warehouse Address'),
(909,'Shop  Address'),
(910,'Delivery Address');