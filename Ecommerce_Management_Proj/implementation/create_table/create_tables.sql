-- Create Ecommerce Management database
CREATE DATABASE Ecommerce_management;

-- Use Ecommerce Management database
USE Ecommerce_management;

CREATE TABLE Cart
    (
        Cart_id VARCHAR(7) NOT NULL,
        PRIMARY KEY(Cart_id)
    );
    
 CREATE TABLE Customer
    (
        Customer_id VARCHAR(6) NOT NULL,
        c_pass VARCHAR(10) NOT NULL,
        Name VARCHAR(20) NOT NULL,
        Address VARCHAR(20) NOT NULL,
        Pincode INT (6) NOT NULL,
        Phone_number_s INT(10) NOT NULL,
        PRIMARY KEY (Customer_id),
        Cart_id VARCHAR(7) NOT NULL,
        FOREIGN KEY(Cart_id) REFERENCES cart(Cart_id)
    );

    CREATE TABLE Seller
    (
        Seller_id VARCHAR(6) NOT NULL,
        s_pass VARCHAR(10) NOT NULL,
        Name VARCHAR(20) NOT NULL,
        Address VARCHAR(10) NOT NULL,
        PRIMARY KEY (Seller_id)
    );

    CREATE TABLE Seller_Phone_num
    (
        Phone_num INT(10) NOT NULL,
        Seller_id VARCHAR(6) NOT NULL,
        PRIMARY KEY (Phone_num, Seller_id),
        FOREIGN KEY (Seller_id) REFERENCES Seller(Seller_id)
        ON DELETE CASCADE
    );

    CREATE TABLE Payment
    (
        payment_id VARCHAR(7) NOT NULL,
        payment_date DATE NOT NULL,
        Payment_type VARCHAR(10) NOT NULL,
        Customer_id VARCHAR(6) NOT NULL,
        Cart_id VARCHAR(7) NOT NULL,
        PRIMARY KEY (payment_id),
        FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
        FOREIGN KEY (Cart_id) REFERENCES Cart(Cart_id),
        total_amount numeric(6)
    );

    CREATE TABLE Product
    (
        Product_id VARCHAR(7) NOT NULL,
        Type VARCHAR(7) NOT NULL,
        Color VARCHAR(15) NOT NULL,
        P_Size VARCHAR(2) NOT NULL,
        Gender CHAR(1) NOT NULL,
        Commission INT(2) NOT NULL,
        Cost INT(5) NOT NULL,
        Quantity INT(2) NOT NULL,
        Seller_id VARCHAR(6),
        PRIMARY KEY (Product_id),
        FOREIGN KEY (Seller_id) REFERENCES Seller(Seller_id)
        ON DELETE SET NULL
    );

    CREATE TABLE Cart_item
    (
        Quantity_wished INT(1) NOT NULL,
        Date_Added DATE NOT NULL,
        Cart_id VARCHAR(7) NOT NULL,
        Product_id VARCHAR(7) NOT NULL,
        FOREIGN KEY (Cart_id) REFERENCES Cart(Cart_id),
        FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
        Primary key(Cart_id,Product_id)
    );

    alter table Cart_item add purchased varchar(3) default 'NO';