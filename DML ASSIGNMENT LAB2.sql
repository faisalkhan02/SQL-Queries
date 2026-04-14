USE DBMS_ASSIGNMENT1;

INSERT INTO client_master 
(Client_No, Name, City, State_Name, Pincode, Bal_Due)
VALUES 
('C1001', 'Rahul Sharma', 'Delhi', 'Delhi', 110001, 5000.50),
('C1002', 'Amit Verma', 'Mumbai', 'Maharashtra', 400001, 12000.00),
('C1003', 'Priya Singh', 'Lucknow', 'Uttar Pradesh', 226001, 0.00),
('C1004', 'Neha Khan', 'Bhopal', 'Madhya Pradesh', 462001, 3500.75),
('C1005', 'Arjun Patel', 'Ahmedabad', 'Gujarat', 380001, 8900.25);

SELECT * FROM client_master;

INSERT INTO client_master 
(Client_No, Name, City, State_Name, Pincode, Bal_Due)
VALUES 
('C1006', 'Imran Ali', 'Hyderabad', 'Telangana', 500001, 0.00),
('C1007', 'Sana Malik', 'Jaipur', 'Rajasthan', 302001, 0.00),
('C1008', 'Rohit Das', 'Kolkata', 'West Bengal', 700001, 0.00);

SELECT * FROM client_master WHERE Bal_Due = 0;

INSERT INTO client_master 
(Client_No, Name, City, State_Name, Pincode, Bal_Due)
VALUES 
('C2001', 'faisal Khan', 'Ghaziabad', 'Uttar Pradesh', 110001, -500);

INSERT INTO client_master 
(Client_No, Name, City, State_Name, Pincode, Bal_Due)
VALUES 
('C2002', 'Invalid Pin', 'Mumbai', 'Maharashtra', 12345, 1000);

INSERT INTO ORDERS
(Order_No, Client_No, Order_Date, Amount)
VALUES
(101, 'C1001', '2026-02-01', 2500.00),
(102, 'C1002', '2026-02-02', 5000.50),
(103, 'C1003', '2026-02-03', 1200.00),
(104, 'C1004', '2026-02-04', 7800.75),
(105, 'C1005', '2026-02-05', 3000.00),
(106, 'C1006', '2026-02-06', 4500.00),
(107, 'C1007', '2026-02-07', 1500.25),
(108, 'C1008', '2026-02-08', 9999.99);

INSERT INTO ORDERS
(Order_No, Client_No, Order_Date, Amount)
VALUES
(201, 'C1001', '2026-02-10', 2000.00),
(202, 'C1001', '2026-02-11', 3500.00),
(203, 'C1001', '2026-02-12', 1500.50);

INSERT INTO ORDERS
(Order_No, Client_No, Order_Date, Amount)
VALUES
(301, 'C1001', '2026-02-15', 0);

INSERT INTO ORDERS
(Order_No, Client_No, Order_Date, Amount)
VALUES
(302, 'C9999', '2026-02-15', 2000);

INSERT INTO CLIENT_MASTER
(Client_No, Name, City, State_Name, Pincode, Bal_Due)
VALUES
('C9999', 'Gaurab Gupta', 'Delhi', 'Delhi', 110001, 0);

INSERT INTO ORDERS
(Order_No, Client_No, Order_Date, Amount)
VALUES
(405, 'C9999', DATE(SYSDATE()), 4500.00);

-- Part B: SELECT Queries (Basic Retrieval)

SELECT * FROM CLIENT_MASTER;

SELECT NAME,CITY FROM CLIENT_MASTER;

SELECT * FROM CLIENT_MASTER
WHERE BAL_DUE > 5000;

SELECT * FROM CLIENT_MASTER
WHERE NAME LIKE "A%";

SELECT * FROM CLIENT_MASTER
WHERE CITY LIKE "%A";

SELECT * FROM CLIENT_MASTER
WHERE BAL_DUE between 1000 AND 10000;

SELECT * 
FROM ORDERS
WHERE Order_Date > '2024-01-01';

SELECT DISTINCT CITY 
FROM CLIENT_MASTER;

-- Part C: UPDATE Operations

SET SQL_SAFE_UPDATES = 0;

UPDATE CLIENT_MASTER
SET BAL_DUE = BAL_DUE * 1.1;

SELECT * FROM client_master;

UPDATE CLIENT_MASTER SET CITY = 'BOMBAY' WHERE CITY ='MUMBAI';
SELECT * FROM client_master;

UPDATE CLIENT_MASTER SET BAL_DUE =0 WHERE CLIENT_NO = 'C1001';
SELECT * FROM client_master;

UPDATE ORDERS SET AMOUNT = AMOUNT+500;
SELECT * FROM ORDERS;

UPDATE CLIENT_MASTER SET STATE_NAME = 'Delhi NCR' WHERE STATE_NAME ='DELHI';
SELECT * FROM client_master WHERE STATE_NAME = "Delhi NCR";

-- Part D: DELETE Operations

DELETE FROM CLIENT_MASTER WHERE BAL_DUE =0 AND CITY = 'DELHI';
SELECT * FROM client_master;

DELETE FROM ORDERS WHERE CLIENT_NO = "C1005";
SELECT * FROM ORDERS;

DELETE FROM ORDERS WHERE AMOUNT <1000;
SELECT * FROM ORDERS;

DELETE FROM CLIENT_MASTER
WHERE Client_No = 'C1002';

RENAME TABLE ORDERS TO ORDERS_202510116100093;
RENAME TABLE CLIENT_MASTER TO CLIENT_202510116100093;



