-- Database 1

create database College;
show databases;
use College;
create table faculty(
id_no int,
fname varchar(30),
lname varchar(30),
salary int,
department varchar(100));
show tables;
insert into faculty(id_no,fname,lname,salary,department)
values
(101,'Patiala','Sundhar',32000,'Mechanical'),
(101,'Marella','Srinath',43000,'Computer Science'),
(101,'Gundla','Durga',34500,'Electrical'),
(101,'konne','Aakash',42300,'Electronics'),
(101,'Bokka','Mahesh',32000,'Civil');
select*from faculty;

-- Database 2

create database Social_Media;
show databases;
use Social_Media;
create table application(
app_name varchar(30),
founder varchar(30),
launch_year int,
size_in_mb float,
installs int);
show tables;
insert into application(app_name,founder,launch_year,size_in_mb,installs)
values
('Instagram','Kelvin Systrom',2010,68.69,472427479),
('Linkedin','Reid Hoffman',2003,86.01,72427479),
('Facebook','Mark Zuckerberg',2004,74.00,637254839),
('Snapchat','Evan Spiegel',2012,64.00,546784357),
('Telegram','Pavel Durov',2013,79.74,987646435),
('Youtube','steve Chen',2005,108.44,364775474);
select*from application;

-- Database 3

create database Hospital;
show databases;
use Hospital;
create table patient_details(
Appointment_number int,
Patient_name varchar(30),
Patient_age int,
Doctor_name varchar(30),
Tests varchar(50));
show tables;
insert into patient_details(Appointment_number,Patient_name,Patient_age,Doctor_name,Tests)
values
('48295726','Srikanth',34,'Dr.shraddha','Blood,Urinal'),
('48297483','raif',25,'Dr.Anjali','Blood'),
('48283797','rayees',45,'Dr.Gowrav','ECG'),
('48298614','abhi',37,'Dr.Shakthi','stool'),
('48295763','leela',29,'Dr.Abhinav','Urinal');
select*from patient_details;

-- Database 4

create database School;
show databases;
use School;
create table Student(
Roll_no int,
fname varchar(30),
lname varchar(30),
class int,
_medium varchar(10));
show tables;
insert into Student(Roll_no,fname,lname,class,_medium)
values
(8,'Marella','srinath',7,'English'),
(12,'Selva','Kannan',4,'Telugu'),
(23,'Chandran','Sidharth',8,'English'),
(21,'Tehela','Karthi',5,'English'),
(46,'Chitluri','Krishna',10,'Telugu');
select*from Student;

-- Database 5

create database SDF;
show databases;
use SDF;
create table Tractor(
Tractor_Model varchar(30),
units int,
Export_units int,
color varchar(20),
Production_number int);
show tables;
insert into Tractor(Tractor_Model,units,Export_units,color,Production_number)
values
('AgroLux 75',5000,1650,'Red',74839773),
('AgroLux 45',3500,2120,'Green',76363849),
('AgroMaxx 50',5000,1500,'Gray',74785455),
('AgroMuxx 65',6000,1976,'Pale-Green',73546387),
('3E Series',3500,2680,'Green',79537387);
select*from Tractor;

-- Database 6

create database Logistic;
show databases;
use Logistic;
create table Delivery_details(
    CustomerName varchar(100),
    Address varchar(255),
    City varchar(100),
    Country varchar(100),
    PostalCode varchar(20));
show tables;
insert into Delivery_details(CustomerName, Address, City, Country, PostalCode) 
values
('John Doe', '28 Rue des Fleurs', 'Paris', 'France', '75001'),
('Maria Schmidt', '34 Königstraße', null, 'Germany', '70173'),
('Luca Rossi', '15 Via Roma', 'Milan', 'Italy', '20121'),
('Yuki Tanaka', '3-2-1 Minami-Aoyama', 'Tokyo', 'Japan', '107-0062'),
('Emily Clarke', '12 Victoria Street', 'London', 'United Kingdom', null);
select*from Delivery_details;

-- Database 7

create database MovieRental;
show databases;
use MovieRental;
create table Details(
	CustomerId varchar(30),
    Customer_Name varchar(30),
    City varchar(20),
    RentedMovie varchar(20),
    Rented_Date date);
show tables;
insert into Details(CustomerId,Customer_Name,City,RentedMovie,Rented_Date) 
values
('MV-55767','Srinath','Coimbatore','Nature of Water','2024-08-22'),
('MV-55675','Vijay','Mumbai','Kalki 2845 AD','2024-08-24'),
('MV-55744','Ajay','Chennai','Fire of Wings','2024-08-21'),
('MV-55456','Suresh','Hyderabad','Mission Mangal','2024-08-11'),
('MV-55795','Ramesh','Banglore','Smooth Criminal','2024-08-18');
select*from Details;

-- Database 8

create database EmployeeManagement;
show databases;
use EmployeeManagement;
create table employee_details(
    EmployeeName varchar(100),
    Salary varchar(40),
    Branch varchar(100),
    Department varchar(100),
    MaritalStatus varchar(20));
show tables;
insert into employee_details(EmployeeName, Salary, Branch, Department, MaritalStatus) 
values
('Marella','56,700','Hyderabad','Human Resource','Single'),
('John Wattson','66,000','Banglore','Development','Married'),
('Shiv','46,500','Hi-Tech City','Human Resource','Single'),
('Druv','56,000','Hi-Tech City','Safety','Single'),
('Pream','48,000','Hi-Tech City','Training','Married');
select*from employee_details;

-- Database 9

create database Restaurant;
show databases;
use Restaurant;
create table MenuItems(
    ItemId varchar(100),
    Item_Name varchar(255),
    Price float,
    Category varchar(100),
    Item_Type varchar(20));
show tables;
insert into MenuItems(ItemId, Item_Name, Price, Category, Item_Type) 
values
('NM-879876','Aakhri Pasta',399.00,'Main Course','VEG'),
('NV-578775','Crab Sodder',359.00,'Starter','NON-VEG'),
('NB-764567','Chicken Poppers',299.00,'Starter','NON-VEG'),
('MM-456789','Brook-stew',159.00,'Soup','VEG'),
('MV-348786','Chedder Stew Pasta',499.00,'Main Course','NON-VEG');
select*from MenuItems;

-- Database 10

create database BikeService;
show databases;
use BikeService;
create table Customer_Info(
	ServiceId int, 
    Service_NO varchar(100),
    CustomerName varchar(255),
    Bike_Model varchar(100),
	Price float);
show tables;
insert into Customer_Info(ServiceId, Service_NO, CustomerName, Bike_Model, Price) 
values
(121,'SE-765567','Balaji','Jawa-350 CC',1290.00),
(122,'SE-765634','Raja Balu','R15',560.00),
(123,'SS-745668','Samraj','Honda Unicorn',599.00),
(124,'SE-777689','Thilak','Royal Enfield Classic 350 CC',890.00),
(125,'SR-793675','Marella Srinath Reddy','GT-650',2999.00);
select*from Customer_Info;
