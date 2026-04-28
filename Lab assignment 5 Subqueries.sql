create database Assignment_5;

use assignment_5;

create table Department (
DeptID int primary key,
DeptName varchar(20),
Location varchar (20)
	
);

create table Employee (
EmpID int primary key,
EmpName varchar(50),
Job varchar (30),
Salary decimal(10,2),
HireDate date,
DeptID int,
ManagerID int,
foreign key (DeptID) references Department(DeptID),
foreign key (ManagerID) references Employee(EmpID)
);


create table Project(
	ProjectID int primary key,
    ProjectName varchar (50),
    DeptID int,
    Budget decimal(12,2),
    foreign key (DeptID) references Department(DeptID)
);


create table Works_On(
	EmpID int,
    ProjectID int ,
    HoursWorked int,
    primary key(EmpID, ProjectID),
    foreign key (EmpID) references Employee(EmpID),
    foreign key (Projeworks_onctID) references Project (ProjectID)
    
);

create table Customer(
CustID int primary key,
CustName varchar(30),
City varchar(30)
);


create table Orders(
	OrderID int primary key,
    CustID int,
    OrderDate date,
    Amount decimal(10,2),
    foreign key (CustID) references Customer(CustID)
);


INSERT INTO DEPARTMENT VALUES
(1, 'HR', 'Delhi'),
(2, 'IT', 'Noida'),
(3, 'Finance', 'Mumbai'),
(4, 'Sales', 'Delhi'),
(5, 'Operations', 'Bangalore'),
(6, 'Marketing', 'Pune'),
(7, 'Support', 'Chennai'),
(8, 'R&D', 'Hyderabad'),
(9, 'Admin', 'Kolkata'),
(10, 'Legal', 'Delhi');


INSERT INTO EMPLOYEE VALUES
(101,'Rahul','Manager',80000,'2019-01-10',1,NULL),
(106,'Suresh','Sales Manager',70000,'2020-07-19',4,NULL),
(116,'Kavita','Manager',75000,'2018-05-20',6,NULL),
(102,'Amit','Developer',60000,'2021-03-15',2,101),
(103,'Neha','Analyst',50000,'2022-06-20',3,101),
(104,'Priya','HR Exec',40000,'2023-02-11',1,101),
(105,'Karan','Sales Exec',45000,'2022-08-05',4,106),
(107,'Anjali','Developer',65000,'2021-11-01',2,102),
(108,'Rohit','Accountant',48000,'2022-09-09',3,103),
(109,'Pooja','Ops Exec',42000,'2023-05-14',5,NULL),
(110,'Vikas','Intern',20000,'2024-01-01',2,102),

(111,'Deepak','Engineer',55000,'2020-03-12',8,102),
(112,'Nisha','HR Exec',42000,'2021-07-18',1,101),
(113,'Tarun','Analyst',47000,'2022-04-22',3,103),
(114,'Simran','Developer',68000,'2021-09-09',2,102),
(115,'Arjun','Sales Exec',46000,'2022-10-10',4,106),
(117,'Ravi','Support',39000,'2023-01-12',7,116),
(118,'Sneha','Designer',52000,'2021-08-30',6,116),
(119,'Manish','Engineer',57000,'2020-11-11',8,102),
(120,'Rekha','Admin',43000,'2022-02-02',9,101),

(121,'Yash','Legal Exec',50000,'2021-06-06',10,101),
(122,'Isha','Developer',62000,'2022-03-03',2,102),
(123,'Varun','Analyst',51000,'2021-12-12',3,103),
(124,'Komal','HR Exec',41000,'2023-04-14',1,101),
(125,'Zaid','Sales Exec',47000,'2022-07-07',4,106),
(126,'Ankit','Engineer',58000,'2020-08-08',8,102),
(127,'Tina','Support',38000,'2023-02-20',7,116),
(128,'Nitin','Designer',53000,'2021-10-10',6,116),
(129,'Asha','Admin',44000,'2022-05-05',9,101),
(130,'Ramesh','Intern',22000,'2024-02-01',2,102),

(131,'Geeta','HR Exec',43000,'2022-06-06',1,101),
(132,'Kunal','Developer',64000,'2021-07-07',2,102),
(133,'Mehul','Analyst',49000,'2022-08-08',3,103),
(134,'Divya','Sales Exec',48000,'2022-09-09',4,106),
(135,'Om','Ops Exec',41000,'2023-01-01',5,NULL),
(136,'Pankaj','Engineer',59000,'2020-02-02',8,102),
(137,'Saloni','Support',37000,'2023-03-03',7,116),
(138,'Harsh','Designer',54000,'2021-04-04',6,116),
(139,'Alok','Admin',45000,'2022-05-05',9,101),
(140,'Ritika','Legal Exec',51000,'2021-06-06',10,101),

(141,'Dev','Developer',66000,'2021-07-07',2,102),
(142,'Mona','Analyst',52000,'2022-08-08',3,103),
(143,'Nakul','Engineer',60000,'2020-09-09',8,102),
(144,'Preeti','HR Exec',42000,'2023-01-01',1,101),
(145,'Sahil','Sales Exec',47000,'2022-02-02',4,106),
(146,'Ritu','Support',36000,'2023-03-03',7,116),
(147,'Ajay','Designer',55000,'2021-04-04',6,116),
(148,'Sunil','Admin',46000,'2022-05-05',9,101),
(149,'Farah','Legal Exec',52000,'2021-06-06',10,101),
(150,'Imran','Intern',21000,'2024-03-01',2,102);


INSERT INTO PROJECT VALUES
(201,'Website Dev',2,500000),
(202,'HR System',1,200000),
(203,'Audit',3,300000),
(204,'Sales Campaign',4,250000),
(205,'Logistics',5,400000),
(206,'Mobile App',2,600000),
(207,'Marketing Ads',6,350000),
(208,'Customer Support',7,150000),
(209,'AI Research',8,800000),
(210,'Admin System',9,100000),
(211,'Legal Docs',10,120000),
(212,'Cloud Infra',2,700000),
(213,'Data Analytics',3,450000),
(214,'E-Commerce',2,650000),
(215,'Security Upgrade',8,500000);


INSERT INTO WORKS_ON VALUES
(102,201,120),(107,201,150),(110,201,80),
(104,202,90),(101,202,60),(112,202,70),
(103,203,110),(108,203,130),(113,203,95),
(105,204,140),(106,204,100),(115,204,120),
(109,205,95),(135,205,100),
(102,206,160),(107,206,170),(122,206,140),
(116,207,130),(118,207,120),(128,207,110),
(117,208,90),(127,208,85),(137,208,80),
(111,209,150),(119,209,160),(126,209,140),
(120,210,100),(129,210,90),(139,210,95),
(121,211,80),(140,211,85),(149,211,75),
(132,212,150),(141,212,160),
(123,213,120),(142,213,130),
(124,202,85),(131,202,88),
(125,204,110),(134,204,105),
(136,215,140),(143,215,150),
(144,202,70),(145,204,95),
(146,208,60),(147,207,115),
(148,210,90),(150,206,100);


INSERT INTO CUSTOMER VALUES
(301,'Arjun','Delhi'),(302,'Meena','Mumbai'),(303,'Ravi','Noida'),
(304,'Sneha','Delhi'),(305,'Kavita','Bangalore'),
(306,'Aman','Pune'),(307,'Rohit','Delhi'),(308,'Neha','Mumbai'),
(309,'Pooja','Noida'),(310,'Vikas','Delhi'),

(311,'Deepak','Pune'),(312,'Nisha','Delhi'),(313,'Tarun','Mumbai'),
(314,'Simran','Noida'),(315,'Arjun2','Delhi'),
(316,'Kavita2','Bangalore'),(317,'Ravi2','Chennai'),
(318,'Sneha2','Delhi'),(319,'Manish','Mumbai'),
(320,'Rekha','Kolkata'),

(321,'Yash','Delhi'),(322,'Isha','Noida'),(323,'Varun','Mumbai'),
(324,'Komal','Delhi'),(325,'Zaid','Bangalore'),
(326,'Ankit','Hyderabad'),(327,'Tina','Chennai'),
(328,'Nitin','Pune'),(329,'Asha','Kolkata'),(330,'Ramesh','Delhi'),

(331,'Geeta','Delhi'),(332,'Kunal','Noida'),(333,'Mehul','Mumbai'),
(334,'Divya','Delhi'),(335,'Om','Bangalore'),
(336,'Pankaj','Hyderabad'),(337,'Saloni','Chennai'),
(338,'Harsh','Pune'),(339,'Alok','Kolkata'),(340,'Ritika','Delhi'),

(341,'Dev','Noida'),(342,'Mona','Mumbai'),(343,'Nakul','Hyderabad'),
(344,'Preeti','Delhi'),(345,'Sahil','Bangalore'),
(346,'Ritu','Chennai'),(347,'Ajay','Pune'),
(348,'Sunil','Kolkata'),(349,'Farah','Delhi'),(350,'Imran','Noida');


INSERT INTO ORDERS VALUES
(401,301,'2024-01-10',5000),(402,302,'2024-01-12',12000),
(403,303,'2024-01-15',7000),(404,301,'2024-02-01',15000),
(405,304,'2024-02-10',3000),(406,305,'2024-03-05',9000),

(407,306,'2024-03-10',11000),(408,307,'2024-03-12',4000),
(409,308,'2024-03-15',8000),(410,309,'2024-03-18',6000),

(411,310,'2024-04-01',2000),(412,311,'2024-04-03',7500),
(413,312,'2024-04-05',10000),(414,313,'2024-04-07',13000),
(415,314,'2024-04-09',9000),(416,315,'2024-04-11',14000),

(417,316,'2024-04-13',3000),(418,317,'2024-04-15',7000),
(419,318,'2024-04-17',6000),(420,319,'2024-04-19',8000),

(421,320,'2024-04-21',9000),(422,321,'2024-04-23',10000),
(423,322,'2024-04-25',12000),(424,323,'2024-04-27',11000),

(425,324,'2024-04-29',5000),(426,325,'2024-05-01',7000),
(427,326,'2024-05-03',8000),(428,327,'2024-05-05',6000),

(429,328,'2024-05-07',9000),(430,329,'2024-05-09',4000),
(431,330,'2024-05-11',3000),(432,331,'2024-05-13',5000),

(433,332,'2024-05-15',11000),(434,333,'2024-05-17',12000),
(435,334,'2024-05-19',10000),(436,335,'2024-05-21',13000),

(437,336,'2024-05-23',8000),(438,337,'2024-05-25',7000),
(439,338,'2024-05-27',9000),(440,339,'2024-05-29',6000),

(441,340,'2024-05-31',10000),(442,341,'2024-06-02',11000),
(443,342,'2024-06-04',12000),(444,343,'2024-06-06',13000),

(445,344,'2024-06-08',14000),(446,345,'2024-06-10',15000),
(447,346,'2024-06-12',5000),(448,347,'2024-06-14',6000),

(449,348,'2024-06-16',7000),(450,349,'2024-06-18',8000),
(451,350,'2024-06-20',9000);



-- Queries
-- Q1. Display the names of employees whose salary is greater than the average salary of all employees.
select EmpName, salary from Employee where Salary > (select avg(Salary) from Employee);

-- Q2. Find the employee(s) who get the maximum salary in the company.
select EmpName, salary from Employee where salary = (select max(salary) from Employee);

-- Q3. Display employees whose salary is less than the salary of employee named 'Amit'.
select EmpName from Employee where salary < any (select salary from Employee where EmpName = 'Amit');

-- Q4. Find the department name of the employee 'Neha' using a subquery.
select DeptName from Department where deptID = (select DeptID from Employee where EmpName in ('Neha'));

-- Q5. Display employees who work in the same department as employee 'Rahul'.
select EmpName  from Employee where DeptID in (select DeptID from Employee where EmpName = 'Rahul');

-- Q6. Find employees whose salary is greater than the minimum salary of department 6.
select EmpName from Employee 
where salary > (select min(salary) from Employee where DeptID = 6);

-- Q7. List employees hired after the hire date of employee 'Priya'.
select EmpName from Employee where Hiredate >(select Hiredate from Employee where EmpName = 'Priya');

-- Q8. Find employees who do not belong to the department located in 'Delhi'.
select e.EmpName from Employee e 
join Department d ON e.DeptID = d.DeptID
where d.DeptID not in (select DeptId from Department where Location = 'Delhi');
-- or    where not d.Location = 'Delhi';

-- Q9. Display the employee(s) having the second highest salary.
select EmpName,salary from Employee where salary = (select max(salary)
from Employee where salary Not in(select max(salary) from Employee));

-- Q10. Find all employees whose department ID appears in the PROJECT table.
select EmpName from Employee 
where DeptId in (select DeptId from Project);


-- Part B: Multiple-Row Subqueries

-- Q11. Display employees who work in departments located in either 'Delhi' or 'Mumbai'.
select EmpName from Employee where DeptID in (select DeptID from Department where Location in ('Delhi','Mumbai'));

-- Q12. Find employees whose salary is greater than all employees in department 3.
select EmpName from Employee where salary > (select max(salary) from Employee where DeptID = 3);

-- Q13. Find employees whose salary is greater than any employee in department 10.
select EmpName,salary from Employee where salary > (select min(salary) from employee where DeptID = 10);

-- Q14. Display employees who work in departments whose names are 'HR', 'Sales', or 'Finance' using a subquery.
select EmpName from employee where DeptID in (select DeptID from Department where DeptName in ('HR','Sales','Finance'));

-- Q15. Find employees who are not working in any department present in the PROJECT table.
select EmpName from Employee where DeptID not in (select DeptID from Project);

-- Q16. List customers who have placed orders with amount greater than any order placed by customer 315.
select CustName from customer where CustID in (select CustID from orders where Amount > any (select Amount from orders where CustID = 315)); 

-- Q17. Display customers whose city matches the city of any customer who placed an order above 5000.
select CustName from customer where City in (select city from customer where CustID in (select CustID from orders where Amount >5000));

-- Q18. Find projects whose budget is greater than all project budgets of department 2.
select ProjectName from project where Budget > all (select budget from project where DeptID = 2);


-- // Part C: Subqueries with IN, ANY, ALL, EXISTS, NOT EXISTS \\ --


-- Q19. Display names of employees who are working on at least one project.
select EmpName from employee where 
EmpID in (select EmpID from works_on);

-- Q20. Display names of employees who are not assigned to any project.
select EmpName from Employee e where not exists (select * from Works_On w where w.EmpID = e.EmpID);

-- Q21. Find departments that have at least one employee.
select DeptName from Department d where exists (select * from Employee e where e.DeptID = d.DeptID);

-- Q22. Find departments that do not have any employees.
select DeptName from Department d where not exists (select * from Employee e where e.DeptID = d.DeptID);

-- Q23. Display customers who have placed at least one order.
select CustName from Customer where CustID in (select CustID from Orders);

-- Q24. Display customers who have never placed any order.
select CustName from Customer c where not exists (select * from Orders o where o.CustID = c.CustID);

-- Q25. Find employees whose department has at least one project.
select EmpName from Employee e
where exists (select * from Project p where p.DeptID = e.DeptID);

-- Q26. Find employees whose department has no project.
select EmpName from Employee e
where not exists (select * from Project p where p.DeptID = e.DeptID);

-- Q27. Display projects on which at least one employee has worked for more than 20 hours.
select ProjectName from Project p where exists 
(select * from Works_On w where w.ProjectID = p.ProjectID and w.HoursWorked > 20);

-- Q28. Display projects on which no employee has worked.
select ProjectName from Project p
where not exists (
    select * from Works_On w
    where w.ProjectID = p.ProjectID
);


-- // Part D: Correlated Subqueries \\ --


-- Q29. Display employees whose salary is greater than the average salary of their own department.
select EmpName from Employee e where Salary > (select avg(Salary) from Employee where DeptID = e.DeptID);

-- Q30. Find employees who get the highest salary in their respective departments.
select EmpName from Employee e where Salary = (select max(Salary) from Employee where DeptID = e.DeptID);

-- Q31. Display employees who were hired earlier than the average hire date of their department.
select EmpName from Employee e where HireDate < (select avg(HireDate) from Employee where DeptID = e.DeptID);

-- Q32. Find departments where at least one employee earns more than 80000.
select DeptName from Department d where exists (select * from Employee e where e.DeptID = d.DeptID and e.Salary > 80000);

-- Q33. Find employees whose salary is less than the average salary of their own department.
select EmpName from Employee e where Salary < (select avg(Salary) from Employee where DeptID = e.DeptID);

-- Q34. Display customers whose total order amount is greater than the average total order amount of all customers.
select CustName from Customer c where (select sum(Amount) from Orders 
where CustID = c.CustID) > (select avg(total) from (select sum(Amount) as total from Orders group by CustID) t);

-- Q35. Find orders whose amount is greater than the average order amount of that customer.
select OrderID from Orders o where Amount > (select avg(Amount) from Orders where CustID = o.CustID);

-- Q36. Display projects whose budget is greater than the average budget of projects in the same department.
select ProjectName from Project p where Budget > (select avg(Budget) from Project where DeptID = p.DeptID);

-- Q37. Find employees who work on more projects than the average number of projects worked on by employees.
select EmpName from Employee e where (select count(*) from Works_On 
where EmpID = e.EmpID) > (select avg(cnt) from (select count(*) as cnt from Works_On group by EmpID) t);

-- Q38. Display employees who worked on the maximum hours in at least one project.
select EmpName from Employee e where exists (select * from Works_On w 
where w.EmpID = e.EmpID and w.HoursWorked = (select max(HoursWorked) from Works_On where ProjectID = w.ProjectID));


--  // Part E: Advanced/Nested Subquery Problems \\ --


--  Q39. Find the department that has the highest average salary.
select DeptName from Department where DeptID = (select DeptID from Employee group by DeptID order by avg(Salary) desc limit 1);

-- Q40. Display the employee(s) who earn more than the average salary of the department having the lowest average salary.
select EmpName, Salary from Employee where Salary > (select avg(Salary) from Employee 
where DeptID = (select DeptID from Employee group by DeptID order by avg(Salary) asc limit 1));

-- Q41. Find employees whose salary is greater than the average salary of employees working under the same manager.
select EmpName, Salary from Employee e where Salary > (select avg(Salary) from Employee where ManagerID = e.ManagerID);

-- Q42. Find the customer(s) who placed the maximum number of orders.
select CustName from Customer where CustID = (select CustID from Orders group by CustID order by count(*) desc limit 1);

-- Q43. Display the project(s) with budget greater than the average budget of departments located in 'Delhi'.
select ProjectName from Project where Budget > (select avg(Budget) from Project 
where DeptID in (select DeptID from Department where Location = 'Delhi'));

-- Q44. Find employees who are working on every project of their department.
select EmpName from Employee where EmpID in (select EmpID from Works_On group by EmpID 
having count(ProjectID) = (select count(*) from Project where DeptID = Employee.DeptID));

-- Q45. Display departments in which all employees earn more than 30000.
select DeptName from Department where DeptID not in (select DeptID from Employee where Salary <= 30000);

-- Q46. Find customers who placed orders in every month available in the ORDERS table.
select CustName from Customer where CustID in (select CustID from Orders 
group by CustID having count(distinct month(OrderDate)) = (select count(distinct month(OrderDate)) from Orders));

-- Q47. Display employees who do not work on any project whose budget is less than 100000.
select EmpName from Employee where EmpID not in (select EmpID from Works_On 
where ProjectID in (select ProjectID from Project where Budget < 100000));

-- Q48. Find departments where the number of employees is greater than the average department-wise employee count.
select DeptName from Department where DeptID in (select DeptID from Employee group by DeptID 
having count(*) > (select avg(cnt) from (select count(*) as cnt from Employee group by DeptID) t));


-- Part F: Query Writing with Output Interpretation --


-- Q49. Find the names of employees whose salary is equal to the minimum salary in their department.
select EmpName from Employee e where Salary = (select min(Salary) from Employee where DeptID = e.DeptID);

-- Q50. Display customers whose every order amount is greater than 10000.
select CustName from Customer c where not exists (select * from Orders o where o.CustID = c.CustID and o.Amount <= 10000);

-- Q51. Find employees who have the same job as at least one employee in department 10.
select EmpName from Employee where Job in (select Job from Employee where DeptID = 10);

-- Q52. Display employees whose salary is not equal to any salary in department 20.
select EmpName from Employee where Salary not in (select Salary from Employee where DeptID = 20);

-- Q53. Find projects handled by departments that have more than 5 employees.
select ProjectName from Project where DeptID in (select DeptID from Employee group by DeptID having count(*) > 5);

-- Q54. Display customers whose latest order amount is greater than their own average order amount.
select CustName from Customer c where (select Amount from Orders where CustID = c.CustID 
order by OrderDate desc limit 1) > (select avg(Amount) from Orders where CustID = c.CustID);

-- Q55. Find employees who have not worked on any project belonging to another department.
select EmpName from Employee where EmpID not in (select EmpID from Works_On where ProjectID in (select ProjectID from Project where DeptID <> Employee.DeptID));


-- // Part G: Correlated Query Challenge Set \\ --


-- Q56. Display each employee name and the number of projects they work on using a correlated subquery in the SELECT clause.
select EmpName,(select count(*) from Works_On w where w.EmpID = e.EmpID) as ProjectCount from Employee e;


-- Q57. Display each department name and the count of employees in that department using a correlated subquery.
select DeptName,(select count(*) from Employee e where e.DeptID = d.DeptID) as EmpCount from Department d;


-- Q58. Show each customer name and total order amount using a correlated subquery.
select CustName,(select sum(Amount) from Orders o where o.CustID = c.CustID) as TotalAmount from Customer c;

-- Q59. Display employees whose salary is greater than the average salary of employees having the same job.
select EmpName from Employee e where Salary > (select avg(Salary) from Employee where Job = e.Job);


-- Q60. Find employees who are the only employee in their department with a particular job title.
select EmpName from Employee e where 1 = (select count(*) from Employee where DeptID = e.DeptID and Job = e.Job);


-- // Part H: Case-Based Questions \\ --


-- Q61. A manager wants the list of employees who earn more than their manager. Write a query using a subquery.
select EmpName from Employee e where Salary > (select Salary from Employee where EmpID = e.ManagerID);


-- Q62. The company wants to identify departments where no project exists. Write the query.
select DeptName from Department d where not exists (select * from Project p where p.DeptID = d.DeptID);


-- Q63. Find customers who have placed more orders than customer 'Dev'.
select CustName from Customer where CustID in (select CustID from Orders group by CustID 
having count(*) > (select count(*) from Orders where CustID = (select CustID from Customer where CustName = 'Dev')));


-- Q64. List employees who are working on projects with budget higher than the average project budget.
select EmpName from Employee where EmpID in (select EmpID from Works_On where ProjectID in (select ProjectID from Project where Budget > (select avg(Budget) from Project)));


-- Q65. Find employees who belong to the department having the maximum number of employees.
select EmpName from Employee where DeptID = (select DeptID from Employee group by DeptID order by count(*) desc limit 1);


-- // Part I: Very Important Practice Queries \\ --

-- // These are especially good for Interviews. \\ --


-- Q66. Difference-based query: Find employees whose salary differs from the company average by more than 20000.
select EmpName from Employee where abs(Salary - (select avg(Salary) from Employee)) > 20000;


-- Q67. Compare with department average: Find employees whose salary is exactly equal to the average salary of their department.
select EmpName from Employee e where Salary = (select avg(Salary) from Employee where DeptID = e.DeptID);


-- Q68. Existence test: Find employees who work on at least two projects.
select EmpName from Employee where EmpID in (select EmpID from Works_On group by EmpID having count(*) >= 2);


-- Q69. Universal condition: Find employees who work on all projects of department 1.
select EmpName from Employee e where not exists (select ProjectID from Project p where p.DeptID = 1 and not exists 
(select * from Works_On w where w.EmpID = e.EmpID and w.ProjectID = p.ProjectID));


-- Q70. Negative existence: Find departments where no employee is assigned to any project.
select DeptName from Department d where not exists (select * from Employee e
 where e.DeptID = d.DeptID and exists (select * from Works_On w where w.EmpID = e.EmpID));




