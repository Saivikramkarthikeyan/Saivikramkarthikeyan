# create databases
show databases;
create databases saidata;
use saidata;
========================================================================================

# create customer table
show tables
drop table if exists customer_table
CREATE TABLE customer_table
(
  CustomerID INT ,
  Cust_name VARCHAR(100),
  Cust_address varchar(100),
  City CHAR(50),
  State CHAR(50), 
  Email_ID VARCHAR(100),
  Date date,
  In_time TIMESTAMP,
  Out_time TIMESTAMP,
  Device char(100),
  Channel VARCHAR(50),
  constraint  check_date_quarter CHECK (Date >= '2023-01-01' AND Date <= '2023-06-30'),
  constraint check_time_variation CHECK (TIMESTAMPDIFF(HOUR, In_time, Out_time) BETWEEN 1 AND 2)
);
=================================================================================================================
# shows created of table column 
select * from customer_table

=================================================================================================================================================================================================================================

# insert records in the customer table
INSERT INTO xx_customer (CustomerID, Cust_name, Cust_address, City, State, Email_ID, Date, In_time, Out_time, Device, Channel) VALUES
(5, 'Michael Brown', '222 Maple St', 'Houston', 'TX', 'michaelbrown@example.com', '2023-01-05', STR_TO_DATE('09:00:00', '%H:%i:%s'), STR_TO_DATE('10:00:00', '%H:%i:%s'), 'mobile', 'Facebook'),
(1, 'John Doe', '123 Main St', 'New York', 'NY', 'johndoe@example.com', '2023-01-01', STR_TO_DATE('10:10:00', '%H:%i:%s'), STR_TO_DATE('11:20:00', '%H:%i:%s'), 'tablet', 'Facebook'),
(3, 'Mark Johnson', '789 Oak St', 'Chicago', 'IL', 'markjohnson@example.com', '2023-01-03', STR_TO_DATE('09:00:00', '%H:%i:%s'), STR_TO_DATE('10:00:00', '%H:%i:%s'), 'mobile', 'Facebook'),
(7, 'Christopher Wilson', '444 Cedar St', 'Seattle', 'WA', 'christopherwilson@example.com', '2023-01-07', STR_TO_DATE('09:00:00', '%H:%i:%s'), STR_TO_DATE('10:00:00', '%H:%i:%s'), 'tablet', 'Facebook'),
(9, 'David Anderson', '666 Pine St', 'Dallas', 'TX', 'davidanderson@example.com', '2023-01-09', STR_TO_DATE('09:00:00', '%H:%i:%s'), STR_TO_DATE('10:00:00', '%H:%i:%s'), 'desktop', 'Facebook'),
(10, 'Michael Johnson', '777 Elm St', 'Chicago', 'IL', 'michaeljohnson@example.com', '2023-01-10', STR_TO_DATE('09:00:00', '%H:%i:%s'), STR_TO_DATE('10:00:00', '%H:%i:%s'),'desktop' ,'Facebook'),
(8, 'Jessica Martinez', '555 Oak St', 'Boston', 'MA', 'jessicamartinez@example.com', '2023-04-22', STR_TO_DATE('10:30:00', '%H:%i:%s'), STR_TO_DATE('11:30:00', '%H:%i:%s'),'desktop', 'Twitter'),
(2, 'Jane Smith', '456 Elm St', 'Los Angeles', 'CA', 'janesmith@example.com', '2023-01-02', STR_TO_DATE('09:00:00', '%H:%i:%s'), STR_TO_DATE('10:00:00', '%H:%i:%s'), 'laptop', 'Facebook'),
(6, 'Emily Davis', '333 Oak St', 'Miami', 'FL', 'emilydavis@example.com', '2023-01-06', STR_TO_DATE('09:00:00', '%H:%i:%s'), STR_TO_DATE('10:00:00', '%H:%i:%s'), 'laptop', 'Facebook'),
(8, 'Jessica Martinez', '555 Oak St', 'Boston', 'MA', 'jessicamartinez@example.com', '2023-01-08', STR_TO_DATE('09:00:00', '%H:%i:%s'), STR_TO_DATE('10:00:00', '%H:%i:%s'), 'mobile', 'Facebook'),
(10, 'Michael Johnson', '777 Elm St', 'Chicago', 'IL', 'michaeljohnson@example.com', '2023-02-14', STR_TO_DATE('09:30:00', '%H:%i:%s'), STR_TO_DATE('10:30:00', '%H:%i:%s'),'tablet ','YouTube'),
(8, 'Jessica Martinez', '555 Oak St', 'Boston', 'MA', 'jessicamartinez@example.com', '2023-02-12', STR_TO_DATE('09:30:00', '%H:%i:%s'), STR_TO_DATE('11:00:00', '%H:%i:%s'), 'laptop', 'Instagram'),
(1, 'John Doe', '123 Main St', 'New York', 'NY', 'johndoe@example.com', '2023-02-05', STR_TO_DATE('09:00:00', '%H:%i:%s'), STR_TO_DATE('10:00:00', '%H:%i:%s'), 'mobile', 'YouTube'),
(6, 'Emily Davis', '333 Oak St', 'Miami', 'FL', 'emilydavis@example.com', '2023-02-06', STR_TO_DATE('10:00:00', '%H:%i:%s'), STR_TO_DATE('11:00:00', '%H:%i:%s'), 'tablet', 'YouTube'),
(4, 'Sarah Williams', '111 Pine St', 'San Francisco', 'CA', 'sarahwilliams@example.com', '2023-01-04', STR_TO_DATE('09:00:00', '%H:%i:%s'), STR_TO_DATE('10:00:00', '%H:%i:%s'),'desktop ','Facebook'),
(10, 'Michael Johnson', '777 Elm St', 'Chicago', 'IL', 'michaeljohnson@example.com', '2023-03-19', STR_TO_DATE('10:00:00', '%H:%i:%s'), STR_TO_DATE('11:00:00', '%H:%i:%s'),'mobile', 'Hathway'),
(9, 'David Anderson', '666 Pine St', 'Dallas', 'TX', 'davidanderson@example.com', '2023-02-09', STR_TO_DATE('10:30:00', '%H:%i:%s'), STR_TO_DATE('11:30:00', '%H:%i:%s'), 'desktop', 'Instagram'),
(5, 'Michael Brown', '222 Maple St', 'Houston', 'TX', 'michaelbrown@example.com', '2023-02-05', STR_TO_DATE('09:30:00', '%H:%i:%s'), STR_TO_DATE('10:30:00', '%H:%i:%s'), 'mobile', 'Instagram'),
(2, 'Jane Smith', '456 Elm St', 'Los Angeles', 'CA', 'janesmith@example.com', '2023-02-02', STR_TO_DATE('09:30:00', '%H:%i:%s'), STR_TO_DATE('10:30:00', '%H:%i:%s'), 'laptop', 'Instagram'),
(7, 'Christopher Wilson', '444 Cedar St', 'Seattle', 'WA', 'christopherwilson@example.com', '2023-03-16', STR_TO_DATE('10:00:00', '%H:%i:%s'), STR_TO_DATE('11:00:00', '%H:%i:%s'),'laptop', 'Hathway'),
(10, 'Michael Johnson', '777 Elm St', 'Chicago', 'IL', 'michaeljohnson@example.com', '2023-04-24', STR_TO_DATE('10:30:00', '%H:%i:%s'), STR_TO_DATE('11:30:00', '%H:%i:%s'),'laptop', 'Twitter'),
(5, 'Michael Brown', '222 Maple St', 'Houston', 'TX', 'michaelbrown@example.com', '2023-03-05', STR_TO_DATE('11:30:00', '%H:%i:%s'), STR_TO_DATE('12:30:00', '%H:%i:%s'), 'desktop', 'YouTube'),
(1, 'John Doe', '123 Main St', 'New York', 'NY', 'johndoe@example.com', '2023-03-10', STR_TO_DATE('11:00:00', '%H:%i:%s'), STR_TO_DATE('12:00:00', '%H:%i:%s'), 'mobile', 'Instagram'),
(3, 'Mark Johnson', '789 Oak St', 'Chicago', 'IL', 'markjohnson@example.com', '2023-03-08', STR_TO_DATE('11:00:00', '%H:%i:%s'), STR_TO_DATE('12:00:00', '%H:%i:%s'), 'mobile', 'YouTube'),
(7, 'Christopher Wilson', '444 Cedar St', 'Seattle', 'WA', 'christopherwilson@example.com', '2023-03-07', STR_TO_DATE('11:30:00', '%H:%i:%s'), STR_TO_DATE('12:30:00', '%H:%i:%s'), 'laptop', 'Instagram'),
(2, 'Jane Smith', '456 Elm St', 'Los Angeles', 'CA', 'janesmith@example.com', '2023-03-02', STR_TO_DATE('11:00:00', '%H:%i:%s'), STR_TO_DATE('12:00:00', '%H:%i:%s'), 'desktop', 'YouTube'),
(10, 'Michael Johnson', '777 Elm St', 'Chicago', 'IL', 'michaeljohnson@example.com', '2023-05-29', STR_TO_DATE('11:00:00', '%H:%i:%s'), STR_TO_DATE('12:00:00', '%H:%i:%s'),'tablet', 'Instagram'),
(4, 'Sarah Williams', '111 Pine St', 'San Francisco', 'CA', 'sarahwilliams@example.com', '2023-04-18', STR_TO_DATE('10:30:00', '%H:%i:%s'), STR_TO_DATE('11:30:00', '%H:%i:%s'),'laptop',  'Twitter'),
(6, 'Emily Davis', '333 Oak St', 'Miami', 'FL', 'emilydavis@example.com', '2023-03-06', STR_TO_DATE('11:00:00', '%H:%i:%s'), STR_TO_DATE('12:00:00', '%H:%i:%s'), 'laptop', 'Instagram'),
(8, 'Jessica Martinez', '555 Oak St', 'Boston', 'MA', 'jessicamartinez@example.com', '2023-03-09', STR_TO_DATE('11:30:00', '%H:%i:%s'), STR_TO_DATE('12:30:00', '%H:%i:%s'), 'desktop', 'YouTube'),
(9, 'David Anderson', '666 Pine St', 'Dallas', 'TX', 'davidanderson@example.com', '2023-03-03', STR_TO_DATE('11:30:00', '%H:%i:%s'), STR_TO_DATE('12:30:00', '%H:%i:%s'), 'tablet', 'YouTube'),
(5, 'Michael Brown', '222 Maple St', 'Houston', 'TX', 'michaelbrown@example.com', '2023-03-14', STR_TO_DATE('10:00:00', '%H:%i:%s'), STR_TO_DATE('11:00:00', '%H:%i:%s'),'laptop', 'Hathway'),
(3, 'Mark Johnson', '789 Oak St', 'Chicago', 'IL', 'markjohnson@example.com', '2023-04-17', STR_TO_DATE('10:30:00', '%H:%i:%s'), STR_TO_DATE('11:30:00', '%H:%i:%s'), 'tablet','Twitter'),
(2, 'Jane Smith', '456 Elm St', 'Los Angeles', 'CA', 'janesmith@example.com', '2023-03-11', STR_TO_DATE('10:00:00', '%H:%i:%s'), STR_TO_DATE('11:00:00', '%H:%i:%s'), 'desktop','Hathway'),
(4, 'Sarah Williams', '111 Pine St', 'San Francisco', 'CA', 'sarahwilliams@example.com', '2023-04-04', STR_TO_DATE('13:00:00', '%H:%i:%s'), STR_TO_DATE('14:00:00', '%H:%i:%s'), 'desktop', 'YouTube'),
(3, 'Mark Johnson', '789 Oak St', 'Chicago', 'IL', 'markjohnson@example.com', '2023-01-03', STR_TO_DATE('09:00:00', '%H:%i:%s'), STR_TO_DATE('10:00:00', '%H:%i:%s'),'mobile' ,'Facebook'),
(1, 'John Doe', '123 Main St', 'New York', 'NY', 'johndoe@example.com', '2023-03-10', STR_TO_DATE('11:00:00', '%H:%i:%s'), STR_TO_DATE('12:00:00', '%H:%i:%s'), 'desktop','Hathway'),
(6, 'Emily Davis', '333 Oak St', 'Miami', 'FL', 'emilydavis@example.com', '2023-03-15', STR_TO_DATE('10:00:00', '%H:%i:%s'), STR_TO_DATE('11:00:00', '%H:%i:%s'),'mobile', 'Hathway'),
(7, 'Christopher Wilson', '444 Cedar St', 'Seattle', 'WA', 'christopherwilson@example.com', '2023-04-21', STR_TO_DATE('10:30:00', '%H:%i:%s'), STR_TO_DATE('11:30:00', '%H:%i:%s'),' mobile','Twitter'),
(9, 'David Anderson', '666 Pine St', 'Dallas', 'TX', 'davidanderson@example.com', '2023-03-18', STR_TO_DATE('10:00:00', '%H:%i:%s'), STR_TO_DATE('11:00:00', '%H:%i:%s'),'laptop', 'Hathway'),
(8, 'Jessica Martinez', '555 Oak St', 'Boston', 'MA', 'jessicamartinez@example.com', '2023-03-17', STR_TO_DATE('10:00:00', '%H:%i:%s'), STR_TO_DATE('11:00:00', '%H:%i:%s'),'tablet', 'Hathway'),
(3, 'Mark Johnson', '789 Oak St', 'Chicago', 'IL', 'markjohnson@example.com', '2023-05-08', STR_TO_DATE('14:30:00', '%H:%i:%s'), STR_TO_DATE('15:30:00', '%H:%i:%s'), 'mobile', 'Instagram'),
(7, 'Christopher Wilson', '444 Cedar St', 'Seattle', 'WA', 'christopherwilson@example.com', '2023-05-07', STR_TO_DATE('14:00:00', '%H:%i:%s'), STR_TO_DATE('15:00:00', '%H:%i:%s'), 'tablet', 'YouTube'),
(4, 'Sarah Williams', '111 Pine St', 'San Francisco', 'CA', 'sarahwilliams@example.com', '2023-05-04', STR_TO_DATE('14:30:00', '%H:%i:%s'), STR_TO_DATE('15:30:00', '%H:%i:%s'), 'laptop', 'Instagram'),
(2, 'Jane Smith', '456 Elm St', 'Los Angeles', 'CA', 'janesmith@example.com', '2023-04-16', STR_TO_DATE('10:30:00', '%H:%i:%s'), STR_TO_DATE('11:30:00', '%H:%i:%s'), 'tablet','Twitter'),
(6, 'Emily Davis', '333 Oak St', 'Miami', 'FL', 'emilydavis@example.com', '2023-04-20', STR_TO_DATE('10:30:00', '%H:%i:%s'), STR_TO_DATE('11:30:00', '%H:%i:%s'),'desktop', 'Twitter'),
(1, 'John Doe', '123 Main St', 'New York', 'NY', 'johndoe@example.com', '2023-04-15', STR_TO_DATE('10:30:00', '%H:%i:%s'), STR_TO_DATE('11:30:00', '%H:%i:%s'), 'laptop','Twitter'),
(5, 'Michael Brown', '222 Maple St', 'Houston', 'TX', 'michaelbrown@example.com', '2023-04-19', STR_TO_DATE('10:30:00', '%H:%i:%s'), STR_TO_DATE('11:30:00', '%H:%i:%s'),'desktop ','Twitter'),
(4, 'Sarah Williams', '111 Pine St', 'San Francisco', 'CA', 'sarahwilliams@example.com', '2023-03-13', STR_TO_DATE('10:00:00', '%H:%i:%s'), STR_TO_DATE('11:00:00', '%H:%i:%s'),'mobile ','Hathway'),
(6, 'Emily Davis', '333 Oak St', 'Miami', 'FL', 'emilydavis@example.com', '2023-06-06', STR_TO_DATE('16:30:00', '%H:%i:%s'), STR_TO_DATE('17:30:00', '%H:%i:%s'), 'mobile', 'Instagram'),
(9, 'David Anderson', '666 Pine St', 'Dallas', 'TX', 'davidanderson@example.com', '2023-04-23', STR_TO_DATE('10:30:00', '%H:%i:%s'), STR_TO_DATE('11:30:00', '%H:%i:%s'), 'mobile','Twitter');
==========================================================================================================================================================================================================

# to count the no. of records available in customer table
SELECT COUNT(*) AS customer FROM customer_table;

==========================================================================================================================================================================================================
# for creating the order table

SHOW tables
select * from xx_order

DROP TABLE IF EXISTS xx_ORDER;
CREATE TABLE xx_ORDER
(
CustomerID int,
ORDER_ID INT PRIMARY KEY,
ORDER_DATE DATE,
PRODUCT VARCHAR(50),
PRODUCT_ID INT,
ARRIVAL_DATE DATE,
DISPATCH_DATE DATE,
SENDER_LOCATION VARCHAR(100),
RECIEVER_LOCATION VARCHAR(100)
);
=============================================================================================================================================

#inserting records in order table

INSERT INTO xx_ORDER (CustomerID,ORDER_ID, ORDER_DATE, PRODUCT, PRODUCT_ID, ARRIVAL_DATE, DISPATCH_DATE, SENDER_LOCATION, RECIEVER_LOCATION)
VALUES
    (1,8, '2023-06-08', 'Fitbit Versa 3', 1008, '2023-06-17', '2023-06-12', 'Denver', 'Las Vegas'),
    (3,15, '2023-06-15', 'GoPro HERO9 Black', 1015, '2023-06-24', '2023-06-19', 'Las Vegas', 'Denver'),
    (5,4, '2023-06-04', 'Sony PlayStation 5', 1004, '2023-06-13', '2023-06-08', 'Tokyo', 'Sydney'),
    (8,13, '2023-06-13', 'Nintendo Switch', 1013, '2023-06-22', '2023-06-17', 'Los Angeles', 'Miami'),
    (4,11, '2023-06-11', 'Apple AirPods Pro', 1011, '2023-06-20', '2023-06-15', 'New York City', 'San Francisco'),
    (7,6, '2023-06-06', 'Canon EOS R5', 1006, '2023-06-15', '2023-06-10', 'Los Angeles', 'New York City'),
    (2,3, '2023-06-03', 'MacBook Pro', 1003, '2023-06-12', '2023-06-07', 'London', 'Paris'),
    (1,19, '2023-06-19', 'Sony WH-1000XM4 Headphones', 1019, '2023-06-28', '2023-06-23', 'Seattle', 'Chicago'),
    (3,2, '2023-06-02', 'Samsung Galaxy S21', 1002, '2023-06-11', '2023-06-06', 'San Francisco', 'Chicago'),
    (7,10, '2023-06-10', 'Samsung 65" 4K UHD Smart TV', 1010, '2023-06-19', '2023-06-14', 'Paris', 'London'),
    (5,14, '2023-06-14', 'Bose QuietComfort 35 II Headphones', 1014, '2023-06-23', '2023-06-18', 'Houston', 'Dallas'),
    (7,5, '2023-06-05', 'Nike Air Jordan 1', 1005, '2023-06-14', '2023-06-09', 'Chicago', 'Miami'),
    (8,12, '2023-06-12', 'Microsoft Surface Laptop 4', 1012, '2023-06-21', '2023-06-16', 'Chicago', 'Seattle'),
    (10,20, '2023-06-20', 'LG OLED65CXPUA 65" OLED TV', 1020, '2023-06-29', '2023-06-24', 'Dallas', 'Houston'),
    (2,1, '2023-06-01', 'iPhone 12', 1001, '2023-06-10', '2023-06-05', 'New York City', 'Los Angeles'),
    (10,18, '2023-06-18', 'Xbox Series X', 1018, '2023-06-27', '2023-06-22', 'San Francisco', 'New York City'),
    (5,16, '2023-06-16', 'Samsung Galaxy Watch 4', 1016, '2023-06-25', '2023-06-20', 'Rome', 'Berlin'),
    (2,7, '2023-06-07', 'DJI Mavic Air 2', 1007, '2023-06-16', '2023-06-11', 'Berlin', 'Rome'),
    (8,9, '2023-06-09', 'Apple iPad Pro', 1009, '2023-06-18', '2023-06-13', 'Sydney', 'Tokyo'),
    (7,17, '2023-06-17', 'Amazon Echo (4th Generation)', 1017, '2023-06-26', '2023-06-21', 'London', 'Paris');


============================================================================================================================

#to check inserted records in table
select * from xx_order
 
 ======================================================================================================================
