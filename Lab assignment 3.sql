create database Company;

use Company; 

create table employee (
EmpID int  primary key,
Name varchar(20),
Department varchar(50),
Salary int ,
Age int,
City varchar(20)
);

insert into employee values(
101,"Faisal Khan","Btech",50000,23,"Bijnor"
);

select * from employee;

INSERT INTO employee (EmpID, Name, Department, Salary, Age, City) VALUES
(1, 'Amit Sharma', 'HR', 35000, 28, 'Delhi'),
(2, 'Priya Verma', 'IT', 55000, 25, 'Noida'),
(3, 'Rahul Singh', 'Finance', 60000, 30, 'Ghaziabad'),
(4, 'Neha Gupta', 'IT', 65000, 27, 'Delhi'),
(5, 'Arjun Mehta', 'Marketing', 40000, 26, 'Mumbai'),
(6, 'Sneha Kapoor', 'HR', 37000, 29, 'Chandigarh'),
(7, 'Vikas Yadav', 'Finance', 58000, 32, 'Lucknow'),
(8, 'Anjali Jain', 'IT', 72000, 24, 'Pune'),
(9, 'Rohit Kumar', 'Marketing', 45000, 31, 'Jaipur'),
(10, 'Kavita Singh', 'HR', 39000, 28, 'Delhi');

INSERT INTO employee (EmpID, Name, Department, Salary, Age, City)
VALUES
(16,'Arjun','IT',30000,25,'Delhi'),
(17,'Riya','HR',32000,26,'Mumbai'),
(18,'Kabir','Sales',28000,27,'Pune'),
(19,'Ananya','IT',45000,24,'Delhi'),
(20,'Vivaan','HR',50000,29,'Mumbai'),
(21,'Meera','Sales',35000,30,'Pune'),
(22,'Ayaan','IT',60000,31,'Bangalore'),
(23,'Ishita','HR',27000,23,'Delhi'),
(24,'Rohan','Sales',38000,28,'Mumbai'),
(25,'Diya','IT',70000,32,'Pune'),
(26,'Kunal','HR',29000,26,'Delhi'),
(27,'Sneha','Sales',41000,27,'Mumbai'),
(28,'Aditya','IT',52000,30,'Pune'),
(29,'Pooja','HR',33000,25,'Bangalore'),
(30,'Rahul','Sales',36000,28,'Delhi'),
(31,'Nikhil','IT',48000,29,'Mumbai'),
(32,'Kavya','HR',55000,31,'Pune'),
(33,'Amit','Sales',26000,24,'Delhi'),
(34,'Sanya','IT',62000,33,'Mumbai'),
(35,'Vikas','HR',37000,27,'Pune'),
(36,'Neha','Sales',42000,28,'Bangalore'),
(37,'Yash','IT',53000,30,'Delhi'),
(38,'Priya','HR',31000,26,'Mumbai'),
(39,'Manish','Sales',34000,29,'Pune'),
(40,'Simran','IT',65000,32,'Delhi'),
(41,'Rakesh','HR',28000,24,'Mumbai'),
(42,'Tanya','Sales',39000,27,'Pune'),
(43,'Varun','IT',72000,34,'Bangalore'),
(44,'Payal','HR',36000,28,'Delhi'),
(45,'Deepak','Sales',43000,30,'Mumbai'),
(46,'Aditi','IT',51000,29,'Pune'),
(47,'Mohit','HR',47000,31,'Delhi'),
(48,'Shreya','Sales',30000,26,'Mumbai'),
(49,'Siddharth','IT',68000,33,'Pune'),
(50,'Komal','HR',35000,27,'Bangalore'),
(51,'Tarun','Sales',44000,30,'Delhi'),
(52,'Naina','IT',56000,31,'Mumbai'),
(53,'Harsh','HR',39000,28,'Pune'),
(54,'Divya','Sales',37000,27,'Delhi'),
(55,'Gaurav','IT',61000,32,'Mumbai'),
(56,'Ankit','HR',34000,26,'Pune'),
(57,'Muskan','Sales',45000,29,'Bangalore'),
(58,'Ritvik','IT',73000,35,'Delhi'),
(59,'Saloni','HR',32000,25,'Mumbai'),
(60,'Karthik','Sales',41000,28,'Pune'),
(61,'Bhavya','IT',54000,30,'Delhi'),
(62,'Alok','HR',38000,27,'Mumbai'),
(63,'Jatin','Sales',46000,31,'Pune'),
(64,'Isha','IT',66000,33,'Bangalore'),
(65,'Naveen','HR',30000,26,'Delhi');

-- Q1. Display all employees whose salary is greater than 40,000.
select * from employee where salary>40000;

-- Q2. Find the total salary of all employees.
select sum(salary) as Total_Salary from employee;

-- Q3. Find the names of the department and their average salary whose age is greater than 45000 --.
select department,avg(salary) from employee 
group by department having avg(salary)>45000;

-- Q4. Display the total salary for each department.
select department,sum(salary)as Total_Salary from employee
group by department;

-- Q5. Display the number of employees in each department.

select department ,count(department) as Count_Employee
from employee group by department;

-- Q6. For each department, display total salary, average salary, and maximum salary.
select department,sum(salary)as Total_Salary,
avg(salary) as Average_Salary,
max(salary)as Maximum_Salary from employee
group by department;

-- Q7. Display the total salary of employees in each department whose salary is greater than 25,000.

select department ,sum(salary) as Total_Salary 
from employee where salary >40000 group by department;

-- Q8. Display departments where the total salary is greater than 100,000.

select department, sum(salary) as Total_Salary 
from employee group by department having sum(salary) > 100000;

-- Q9. Display departments having more than 3 employees.

select department , count(EmpID) 
from employee group by department having count(EmpID) >3;


-- Q10. Display departments where employees belong to 'Delhi' and 
-- the average salary is greater than 30,000.

select department , avg(salary) from employee
where city = "Delhi" group by department having avg(salary)>30000;

-- Q11. Display departments where total salary > 100,000 and number of employees > 2.

select department , count(EmpID)as Total_Employee, 
sum(salary) as Total_Salary from  employee 
group by department having sum(salary)>100000 and count(Empid)>2;


-- Q12. Display the total salary for each Department and City combination.

select department, city, sum(salary)as Total_Salary 
from employee group by department, city;



-- Q13. Display each department and its maximum salary.

select department ,max(salary) from employee group by department;


-- Q14. Display departments with a maximum salary greater than 50,000.

select department ,max(salary) from employee 
group by department having max(salary) > 50000;


-- Q15. Display the department-wise average salary in descending order.

select department , avg(salary) from employee 
group by department order by avg(salary) desc;


-- Q16. Display departments where employees have a salary> 20,000 and a total salary> 80,000.

select department , sum(salary) as Total_Salary 
from employee where salary > 20000 group by department having sum(salary) > 80000;


-- Q17. Display departments where employees are age 30+ and have a count >= 2.

select department from employee where age > 30 group by department having count(EmpID) >= 2;


-- Q18. Display departments where employees in Mumbai have an average salary > 35,000.

Select department , city , avg(salary) from employee 
where city = "Mumbai" group by department,city 
having  avg(salary) >35000;


-- Q19. Display departments where employees' salaries are > 40,000 and the maximum salary is > 60,000.

select department from employee where salary > 40000 group by department having max(salary) > 60000;


-- Q20. Display departments where employees belong to Delhi and have a total salary > 90,000 and an average salary > 30,000.

select department from employee where city = "Delhi" group by department having sum(salary) > 90000 and avg(salary) > 30000;


-- Q21. Display departments and the number of employees 
-- who are age > 25 and salary > 25,000, and whose department has more than 3 employees.

select department , count(EmpID) from employee where age > 25 and  salary > 25000 group by department having count(EmpID) > 3;


-- Q22. Display departments and total salary paid to those departments where employees belong to IT or HR and total salary > 70,000.

select department , sum(salary) as Total_Salary from employee 
where department = "IT"or "HR" group by department having sum(salary) > 70000;



select * from employee







