CREATE DATABASE Operators;
USE Operators;

-- Creating table 1 to perform arithmetic operator.

# Arithmetic Operator :

CREATE TABLE arithmetic(num1 int not null,num2 int not null);
INSERT INTO arithmetic(num1,num2)
VALUES 
(50,30),(74,63),(74,98),(34,23),(12,4),
(34,24),(23,44),(24,34),(56,43),(67,89),
(12,23),(45,56),(43,24),(9,5),(10,15),
(45,35),(35,25),(23,22),(33,23),(44,33);
SELECT num1,num2,
num1+num2 AS sum,
num1-num2 AS abst,
num1*num2 AS prod,
num1/num2 AS divi,
num1%num2 AS modu,
pow(num1,num2) AS expo, -- syntax for ** (exponent)
FLOOR(num1/num2) AS floor_divi -- syntax for // (Floor-Division)
FROM arithmetic;
select*from arithmetic;

--  Creating table 2 to perform remaining Operators

CREATE TABLE Laptops_purchase_details(
id int auto_increment,
customer_name varchar(50) not null,
customer_location varchar(50) not null,
brand varchar(50),
model varchar(80),
price decimal(10,2) not null,
transaction_method varchar(30),
primary key(id)
);
INSERT INTO Laptops_purchase_details(brand,model,price,customer_name,customer_location,transaction_method)
VALUES 
('Dell','XPS 13',120000,'Marella Srinath','Hyderabad','Cash'),
('Asus','VivoBook 15',60000,'Vamsidhar Reddy','Nizambad','Cash'),
('Dell','Inspiron 15',68990,'Konne Aakash','Coimbatore','UPI'),
('HP','Pavilion x360 14',70000,'Bokka Naga Mahesh','Chennai','Credit Card'),
('Lenovo','IdeaPad Flex 5',80000,'Sidharth C Chandran','Hyderabad','Cash'),
('Apple','MacBook Air 13',119900,'Selva Kannan','Selam','UPI'),
('HP','Spectre x360 14',140000,'Karthi','Tiruppur','Cash'),
('Acer','Swift 3',65000,'Soundhar','Selam','Debit Card'),
('Asus','ZenBook 13',75000,'Durga Rao','Vijayawada','EMI'),
('MSI','GF63 Thin',85000,'Narasimha','Kurnool','Cash'),
('HP','15s',55000,'Thanga Selvan','Coimbatore','Credit Card'),
('Acer','Aspire 7',70000,'Bhargav','Tirupati','EMI'),
('Lenovo','IdeaPad 3',60000,'Sri Krishna','Rajamundry','Cash'),
('Dell','Vostro 15',65000,'Jinka Sagar','Kadapa','EMI'),
('Asus','TUF Gaming F15',78000,'Suresh','Guntur','Cash'),
('Dell','G15 Gaming',110000,'Ram kumar','Hyderabad','Debit card'),
('Apple','MacBook Pro M2',200000,'Venkata Giri','Hyderabad','Debit Card'),
('Samsung','Galaxy Book pro 360',125000,'Sundar Paul','Guntur','EMI'),
('Razer','Blade 15',190000,'Pavan','Hyderabad','UPI');
SELECT*FROM Laptops_purchase_details;

-- Comparision Operator :

SELECT*FROM Laptops_purchase_details WHERE price=60000; -- Equals (=)
SELECT*FROM Laptops_purchase_details WHERE price!=60000; -- Not Equals to (<> or !=)
SELECT*FROM Laptops_purchase_details WHERE price<85000; -- Less than (<)
SELECT*FROM Laptops_purchase_details WHERE price>80000; -- Greater than (>)
SELECT*FROM Laptops_purchase_details WHERE price<=70000; -- Less than or Equals to (<=)
SELECT*FROM Laptops_purchase_details WHERE price>=100000; -- Greater than or Equals to (>=)

-- Logical Operator :

SELECT*FROM Laptops_purchase_details WHERE price>85000 AND transaction_method='Cash'; -- AND operator
SELECT*FROM Laptops_purchase_details WHERE price<100000 OR transaction_method='Credit_Card'; -- OR operator
SELECT*FROM Laptops_purchase_details WHERE NOT transaction_method='EMI'; -- NOT operator

-- Concatination :

SELECT customer_name, CONCAT(brand,'',model) AS Laptop FROM Laptops_purchase_details; -- concat()

-- LIKE Operator :

SELECT*FROM Laptops_purchase_details WHERE transaction_method LIKE '%Card'; -- Left (%name)
SELECT*FROM Laptops_purchase_details WHERE transaction_method LIKE 'Credit%'; -- right (name%)
SELECT*FROM Laptops_purchase_details WHERE model LIKE '%Book%'; -- Both Sides (%name%)

-- IN / NOT IN Operator : 

SELECT*FROM Laptops_purchase_details WHERE brand IN ('Dell');
SELECT*FROM Laptops_purchase_details WHERE customer_location NOT IN ('Hyderabad','Guntur');

-- IS NULL / IS NOT NULL Operator :

SELECT*FROM Laptops_purchase_details WHERE customer_location IS NOT NULL;
SELECT*FROM Laptops_purchase_details WHERE customer_location IS NULL;

-- BETWEEN / NOT BETWEEN Operator :

SELECT*FROM Laptops_purchase_details WHERE price BETWEEN 70000 AND 100000;
SELECT*FROM Laptops_purchase_details WHERE price NOT BETWEEN 70000 AND 100000;