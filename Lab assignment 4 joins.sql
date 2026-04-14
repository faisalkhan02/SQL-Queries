DROP DATABASE IF EXISTS Assignment_4;
CREATE DATABASE Assignment_4;
USE Assignment_4;


-- SUPPLIER
CREATE TABLE SUPPLIER(
SupplierID INT PRIMARY KEY,
SupplierName VARCHAR(30),
City VARCHAR(30)
);

-- CUSTOMER
CREATE TABLE CUSTOMER(
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(30),
City VARCHAR(30)
);

-- PRODUCT
CREATE TABLE PRODUCT(
ProductID INT PRIMARY KEY,
ProductName VARCHAR(30),
SupplierID INT,
Price DECIMAL(10,2),
FOREIGN KEY (SupplierID) REFERENCES SUPPLIER(SupplierID)
);

-- ORDERS
CREATE TABLE ORDERS(
OrderID INT PRIMARY KEY,
ProductID INT,
CustomerID INT,
Quantity INT,
FOREIGN KEY(ProductID) REFERENCES PRODUCT(ProductID),
FOREIGN KEY(CustomerID) REFERENCES CUSTOMER(CustomerID)
);


INSERT INTO SUPPLIER VALUES
(1,'TechCorp','Delhi'),
(2,'GlobalTrade','Mumbai'),
(3,'SupplyHub','Pune'),
(4,'PrimeSource','Bangalore'),
(5,'QuickSupply','Chennai'),
(6,'MegaMart','Delhi'),
(7,'UrbanSupply','Mumbai'),
(8,'NextGen','Pune'),
(9,'AlphaTrade','Bangalore'),
(10,'Skyline','Chennai');


INSERT INTO PRODUCT VALUES
(101,'Laptop',1,60000),
(102,'Mouse',1,500),
(103,'Keyboard',2,1500),
(104,'Monitor',2,12000),
(105,'Printer',3,8000),
(106,'Scanner',3,7000),
(107,'Tablet',4,25000),
(108,'Phone',5,20000),
(109,'Charger',6,800),
(110,'Headphones',7,3000),
(111,'Camera',8,45000),
(112,'Speaker',9,5000),
(113,'Router',10,3500),
(114,'SSD',4,6000),
(115,'Hard Disk',5,5500);


INSERT INTO CUSTOMER VALUES
(201,'Amit','Delhi'),
(202,'Sara','Mumbai'),
(203,'Rahul','Pune'),
(204,'Neha','Bangalore'),
(205,'Ali','Chennai'),
(206,'Priya','Delhi'),
(207,'Karan','Mumbai'),
(208,'Simran','Pune'),
(209,'Arjun','Bangalore'),
(210,'Meera','Chennai');

INSERT INTO ORDERS VALUES
(301,101,201,2),
(302,102,202,5),
(303,103,203,3),
(304,104,204,1),
(305,105,205,4),
(306,106,206,2),
(307,107,207,1),
(308,108,208,3),
(309,109,209,6),
(310,110,210,2),
(311,111,201,1),
(312,112,202,4),
(313,113,203,3),
(314,114,204,2),
(315,115,205,5);

INSERT INTO SUPPLIER VALUES (11,'NoProductSupplier','Delhi');

-- Check Data
SELECT * 
FROM PRODUCT p
JOIN ORDERS o ON p.ProductID = o.ProductID;


-- Q1. Display supplier-wise total sales amount (Price × Quantity).

SELECT 
    s.SupplierName,
    SUM(p.Price * o.Quantity) AS TotalSales
FROM SUPPLIER s
JOIN PRODUCT p ON s.SupplierID = p.SupplierID
JOIN ORDERS o ON p.ProductID = o.ProductID
GROUP BY s.SupplierName;

-- Q2. Display product name, supplier name, and total quantity sold.

SELECT p.ProductName, s.SupplierName,
sum(o.Quantity) as Total_Quantity
from Product p 
join Supplier s ON p.SupplierID =  s.SupplierID
join Orders o ON p.ProductID = o.ProductID
group by p.ProductName,s.SupplierName;

-- Q3. List all suppliers along with number of products they supply, including suppliers with zero products.

Select s.SupplierName, count(p.ProductID) as Total_Product
from Supplier s 
left join Product p On s.SupplierID = p.SupplierID
group by s.SupplierName;


INSERT INTO PRODUCT VALUES (116,'Smartwatch',1,10000);

-- Q4. Display suppliers who supply more than 2 products.

Select s.SupplierName, count(p.ProductID) as Total_Product
from Supplier s 
join Product p ON s.SupplierID = p.SupplierID
group by s.SupplierName having count(p.ProductID) >2;


INSERT INTO PRODUCT VALUES (117,'Unknown',Null,1000);
-- Q5. List all products and their suppliers, including products that have no valid supplier.

Select s.SupplierName, p.ProductName
from Product p 
left join Supplier s ON p.SupplierID = s.SupplierID;


-- Q6. Display all suppliers who do not supply any product.
Select s.SupplierName 
from Supplier s 
left join Product p ON s.SupplierID = p.SupplierID
where p.ProductID is Null;


-- Q7. Display products supplied by suppliers from 'Delhi' with price greater than 50,000.
Select p.ProductName, s.SupplierName, s.City ,p.Price
From Supplier s 
join Product p ON s.SupplierID = p.SupplierID
where s.city = "Delhi" and p.price > 50000 ;


-- Q8. Display suppliers whose total product value exceeds 70,000.

select s.SupplierName,count(ProductID) as TotalProduct,sum(p.Price) as TotalAmount
from Supplier s 
join Product p ON s.SupplierID = p.SupplierID 
group by SupplierName having sum(p.price) > 70000;


-- Q9. Display each product along with its related product name (SELF JOIN).



-- Q10. Generate all supplier–product combinations and display only those where supplier city = 'Mumbai'.

SELECT 
    s.SupplierName, 
    p.ProductName
FROM SUPPLIER s
CROSS JOIN PRODUCT p
WHERE s.City = 'Mumbai';

-- Q11. Display supplier name, product name, and total sales (quantity × price).

Select s.SupplierName , p.ProductName, sum(o.Quantity * p.price) as TotalSales
 from supplier s 
 Join Product p On s.supplierID = p.supplierID
 join Orders o ON o.ProductID = p.ProductID
 group by s.supplierName,p.ProductName;


-- Q12. Display product name and total quantity sold, including products never ordered.
select p.ProductName, sum(o.quantity) as TotalQuantity
from Product p 
left join Orders o ON p.ProductId = o.ProductID
group by ProductName;


-- Q13. Display all products and total number of orders placed for each.

select p.ProductName, count(o.orderID) as TotalOrder
from Product p 
left join Orders o ON p.ProductID = o.ProductID
group by ProductName;


-- Q14. Display suppliers who supply products priced higher than the average price of all products.

SELECT DISTINCT s.SupplierName
FROM SUPPLIER s 
JOIN PRODUCT p ON s.SupplierID = p.SupplierID
WHERE p.Price > (
    SELECT AVG(Price) FROM PRODUCT
);


-- Q15. Display supplier name and product name where supplier city = 'Delhi' and price between 20,000 and 60,000.

select s.SupplierName,p.ProductName 
from Supplier s 
join Product p ON p.SupplierID = s.SupplierID
where city = "Delhi" and price between 20000 and 60000;


-- Q16. Display suppliers who have no orders for any of their products.

SELECT s.SupplierName
FROM SUPPLIER s
LEFT JOIN PRODUCT p ON s.SupplierID = p.SupplierID
LEFT JOIN ORDERS o ON p.ProductID = o.ProductID
GROUP BY s.SupplierID, s.SupplierName
HAVING COUNT(o.OrderID) = 0;




