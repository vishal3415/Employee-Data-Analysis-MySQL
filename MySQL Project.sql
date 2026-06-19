-- Question 1 : Display all records from employees table.
select * from employees ;

-- Question 2 : Show employees earning more than ₹50,000.
select employeename, salary from employees where salary > 50000 ;

-- Question 3 : Display employees belonging to Ahmedabad.
select * from employees where city = "ahmedabad" ;

-- Question 4 : Show employees from highest to lowest salary.
select * from employees order by salary desc ;

-- Question 5 : Find total number of employees.
select count(employeeid ) from employees ;

-- Question 6 : Calculate average salary.
select avg(salary) from employees ;

-- Question 7 : Find highest salary.
select max(salary) from employees;

-- Question 8 : Find lowest salary.
select min(salary) from employees;

-- Question 9 : Calculate total salary expense.
select sum(salary) as salary_paid from employees;

-- Question 10 : Find number of employees in each department.
select department , count(*) from employees group by Department ;

-- Question 11 : Find average salary for each department.
select department , avg(salary) as avg_salary from employees group by Department ;

-- Question 12 : Find highest salary department-wise.
select department , max(salary) from employees	group by department ;

-- Question 13 : Show employees who joined after 2023.
select * from employees where JoiningDate >"2023-01-01" ;

-- Question 14 : Find top-rated employees.
select * from employees where PerformanceRating = 5 ;

-- Question 15 : Find employees whose name starts with A.
select * from employees where EmployeeName like "A%" ;

-- Question 16 : Find employees having Patel surname.
select * from employees where EmployeeName like "%patel%" ;

-- Question 17 : Salary between 40,000 and 70,000.
select * from employees where Salary between  40000 and 50000  ;

-- Question 18 : Employees from IT and Finance.
select * from employees where Department in ("it" ,"finance" ) ;

-- Question 19 : Show all unique cities.
select distinct(city) from employees ;

-- Question 20 : Show top 5 highest paid employees.
select * from employees order by salary desc  limit 5 ;

-- Question 21 : Show bottom 5 salaries.
select * from employees order by salary limit 5 ;

-- Question 22 : Find second highest salary
select max(salary ) from employees where salary < ( select max(salary) from employees );

-- Question 23 Find third highest salary
select * from employees order by salary desc limit 1   offset 2 ;

-- Question 24 Employees earning above average salary
select * from employees where salary > ( select avg(salary) from employees );

-- Question 25 : Department with highest average salary;
select department , max(salary) from employees group by department order by avg(salary) desc ;

-- Question 26 : Count employees city-wise
select city , count(*) from employees group by city ;

-- Question 27  Average rating department-wise
select department ,avg(performancerating) from employees group by Department ;

-- Question 28 :  Employees joined in 2024
select * from employees where year(joiningdate)="2024" ; 

-- Question 29 :  Find employees with highest salary
SELECT * FROM employees
WHERE Salary=( SELECT MAX(Salary) FROM employees );

-- Question 30 Find duplicate employee names
select employeename , count(employeename) from employees group by EmployeeName 
having count(employeename) > "1" ;

-- Question 31 : Department having more than 100 employees
select department , count(employeename) from employees group by department 
having count(employeename) > 100 ;

-- Question 32 :  Salary ranking
select employeename , salary , rank() over( order by salary desc ) as rankno 
from employees ;

-- Question 33 :  Dense rank salary
select employeename , salary , dense_rank () over( order by salary desc ) as ranknom from employees ;

-- Question 34 : Row number by department
select employeename , department , row_number() over( partition by department ) rownum
from employees ;

-- Question 35 : Salary ranking
select employeename , salary , rank() over(order by salary desc ) rankno from employees ;

-- Question 36 :  Dense rank salary
select employeename , salary , dense_rank() over(order by salary desc ) as ranko from employees ;

-- Question 37:  Row number by department
select employeename , department, row_number () over ( partition by department ) as rownum from employees ;

-- Question 38 : Previous employee salary
select employeename , salary , lag(salary) over(order by salary ) previous_salary from employees ;

-- Question 39 :  Next employee salary
select employeename , salary , lead(salary) over(order by salary ) prior_salary from employees ;

-- Question 40 :  Department-wise salary total
select department , sum(Salary) as total_salary  from employees group by department ;

-- Question 41 : City-wise average salary
select city , avg(salary) avg_salary from employees group by city ;

-- Question 42 :  Salary category
select employeename , 
case
when salary >= 70000 then "High"
when salary >= 50000 then "Medium" 
else "Low"
end as halat 
from employees ;

-- Question 43 :  Employees joined this year
select * from employees where year(Joiningdate)=year(curdate()) ;

-- Question 44 :  Number of days employee worked
select employeename , datediff(curdate() , joiningdate ) from employees ; 

-- Question 45 :  Highest paid employee in each department
select * from employees e where salary = ( select max(salary) from employees where Department = e.Department) ;

-- Question 46 :  Departments with average salary > 60000
SELECT employeename , salary , department FROM employees e WHERE Salary= (
SELECT MAX(Salary) FROM employees WHERE Department=e.Department ); 

-- Question 47 : Departments with average salary > 60000
select department , avg(salary) from employees group by Department  having avg(salary) > 60000 ;

-- Question 48 : Employees not in HR
select * from employees where department <> "hr" ;

-- Question 49 : Find oldest employee ;
select * from employees order by joiningdate  limit 1 ;

-- Question 50 :  Department-wise employee percentage
SELECT Department,
COUNT(*)*100/(SELECT COUNT(*) FROM employees) Percentage
FROM employees
GROUP BY Department;

-- Question 51 :  Find salary difference from average salaryry 
select employeename , salary , 
salary- ( select avg(salary) from employees ) as diffrence 
from employees ;



 










 

 






















