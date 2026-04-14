-- create database LabAssignment1

-- use LabAssignment1;

-- create table Client_Master (
-- 	Client_No varchar (6) primary key,
--     Name varchar(20) not null,
--     City varchar(15) not null,
--     State varchar(15),
--     Pincode numeric(6) check(Pincode between 100000 and 999999),
--     Bal_Due numeric(10,2) check (Bal_Due >=0)
--     
--     );


-- create table Orders(
-- 	Order_No numeric (6) primary key,
-- 	Client_No varchar (6) not null ,
--     Order_Date date ,
--     Order_Amount numeric(8,2) check(Order_Amount >0),
--     foreign key (Client_No) references Client_Master (Client_No)
--     );

-- alter table client_master add column Date date

-- alter table client_master modify Pincode numeric(8);

-- alter table client_master modify Bal_Due numeric(10,2);

-- alter table client_master rename column State to State_Name;

-- alter table client_master add constraint unique_name_city unique (name,city);

-- alter table client_master drop constraint unique_name_city;

-- alter table client_master add constraint chk_pincode check (pincode between 100000 and 999999);

-- alter table client_master drop constraint chk_pincode;

-- alter table orders add constraint chk_order_amount check (order_amount between 1 and 100000);

-- set foreign_key_checks = 0;

-- set foreign_key_checks = 1;

-- alter table orders drop foreign key orders_ibfk_1;

-- alter table orders add constraint fk_orders_client foreign key(client_no) references client_master(client_no) on delete cascade;

alter table orders drop primary key;

alter table orders add constraint pk_orders primary key (order_no);

alter table orders rename to order_master;

alter table client_master rename to clients;

truncate table order_master
