# Task 2

create database Logistic;
show databases;

use Logistic;

create table Delivery_details(
    DeliveryID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    Country VARCHAR(100),
    PostalCode VARCHAR(20)
);
show tables;

insert into Delivery_details(CustomerName, Address, City, Country, PostalCode) 
values
('John Doe', '28 Rue des Fleurs', 'Paris', 'France', '75001'),
('Maria Schmidt', '34 Königstraße', null, 'Germany', '70173'),
('Luca Rossi', '15 Via Roma', 'Milan', 'Italy', '20121'),
('Yuki Tanaka', '3-2-1 Minami-Aoyama', 'Tokyo', 'Japan', '107-0062'),
('Emily Clarke', '12 Victoria Street', 'London', 'United Kingdom', null),
('Carlos Silva', '55 Avenida Paulista', 'São Paulo', 'Brazil', '01311-200'),
('Ling Wei', '88 Nathan Road', 'Kowloon', 'Hong Kong', null),
('Pierre Dupont', '22 Rue de la Paix', 'Brussels', 'Belgium', '1000'),
('Isabella Garcia', '9 Carrera de San Jerónimo', 'Madrid', 'Spain', '28014'),
('Avery Thompson', '47 King Street', 'Toronto', 'Canada', 'M5V 3C6'),
('Sophie Nielsen', '6 Nyhavn', null, 'Denmark', '1051'),
('Oliver Brown', '77 George Street', 'Sydney', 'Australia', '2000'),
('Arjun Patel', '18 Park Avenue', 'Bangalore', 'India', '560025'),
('Thabo Mbeki', '21 Heerengracht Street', 'Cape Town', 'South Africa', '8001'),
('Mia Williams', '89 Lygon Street', 'Melbourne', 'Australia', '3053'),
('Jean Martin', '10 Rue de Rivoli', 'Paris', 'France', null),
('Santiago Lopez', '15 Plaza Mayor', 'Madrid', 'Spain', '28012'),
('Akira Suzuki', '6-4-3 Shibuya', 'Tokyo', 'Japan', '150-0002'),
('Manuel Pereira', '31 Rua Garrett', 'Lisbon', 'Portugal', '1200-203'),
('Janos Kovacs', '53 Váci utca', 'Budapest', 'Hungary', '1056');
select*from Delivery_details;

select*from Delivery_details where city is null;
update Delivery_details set City='Bucklav' where DeliveryID=2;
update Delivery_details set City='senzul' where DeliveryID=11;

select*from Delivery_details;

select*from Delivery_details where PostalCode is null;
update Delivery_details set PostalCode='28019' where DeliveryID=5;
update Delivery_details set PostalCode='10753' where DeliveryID=7;
update Delivery_details set PostalCode='52782' where DeliveryID=16;

select*from Delivery_details;

-- Adding 2 columns to table
alter table Delivery_details add DeliveryDate date;
alter table Delivery_details add PaymentMethod varchar(20);

/*insert into Delivery_details(DeliveryDate,PaymentMethod) 
values
('2024-09-17','CreditCard'),('2024-09-11','NetBanking'),('2024-09-15','COD'),('2024-09-24','EMI'),('2024-09-01','CreditCard'),
('2024-09-18','CreditCard'),('2024-09-12','NetBanking'),('2024-09-15','COD'),('2024-09-25','EMI'),('2024-09-03','CreditCard'),
('2024-09-19','CreditCard'),('2024-09-13','NetBanking'),('2024-09-17','COD'),('2024-09-26','EMI'),('2024-09-05','CreditCard'),
('2024-09-20','CreditCard'),('2024-09-14','NetBanking'),('2024-09-18','COD'),('2024-09-27','EMI'),('2024-09-07','CreditCard');

select*from Delivery_details; */ -- not a corret method

update Delivery_details set DeliveryDate='2024-09-17', PaymentMethod='CREDITCARD' where DeliveryID=1;
update Delivery_details set DeliveryDate='2024-09-01', PaymentMethod='EMI' where DeliveryID=2;
update Delivery_details set DeliveryDate='2024-09-03', PaymentMethod='EMI' where DeliveryID=3;
update Delivery_details set DeliveryDate='2024-09-06', PaymentMethod='NETBANKING' where DeliveryID=4;
update Delivery_details set DeliveryDate='2024-09-06', PaymentMethod='COD' where DeliveryID=5;
update Delivery_details set DeliveryDate='2024-09-09', PaymentMethod='NETBANKING' where DeliveryID=6;
update Delivery_details set DeliveryDate='2024-09-11', PaymentMethod='NETBANKING' where DeliveryID=7;
update Delivery_details set DeliveryDate='2024-09-13', PaymentMethod='CREDITCARD' where DeliveryID=8;
update Delivery_details set DeliveryDate='2024-09-15', PaymentMethod='COD' where DeliveryID=9;
update Delivery_details set DeliveryDate='2024-09-15', PaymentMethod='EMI' where DeliveryID=10;
update Delivery_details set DeliveryDate='2024-09-18', PaymentMethod='CREDITCARD' where DeliveryID=11;
update Delivery_details set DeliveryDate='2024-09-19', PaymentMethod='NETBANKING' where DeliveryID=12;
update Delivery_details set DeliveryDate='2024-09-21', PaymentMethod='CREDITCARD' where DeliveryID=13;
update Delivery_details set DeliveryDate='2024-09-25', PaymentMethod='EMI' where DeliveryID=14;
update Delivery_details set DeliveryDate='2024-09-27', PaymentMethod='COD' where DeliveryID=15;
update Delivery_details set DeliveryDate='2024-09-25', PaymentMethod='CREDITCARD' where DeliveryID=16;
update Delivery_details set DeliveryDate='2024-09-14', PaymentMethod='NETBANKING' where DeliveryID=17;
update Delivery_details set DeliveryDate='2024-09-29', PaymentMethod='COD' where DeliveryID=18;
update Delivery_details set DeliveryDate='2024-09-26', PaymentMethod='COD' where DeliveryID=19;
update Delivery_details set DeliveryDate='2024-09-25', PaymentMethod='EMI' where DeliveryID=20;

select*from Delivery_details;