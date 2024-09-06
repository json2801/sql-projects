-- 1.show all columns and rows in dataset
-- query
select * from john.salariess


-- 2.show only the employeename and jobtitle in columns
-- query
select EmployeeName,JobTitle from john.salariess


-- 3.show the number of employees in the table
-- query
select count(EmployeeName) Employee from salariess


-- 4.show the unique job titles from the table 
-- query
select distinct(JobTitle)   from salariess


-- 5.show the job title and overtime pay for all employees with overtime pay greater than 50000
-- query
select JobTitle,OvertimePay from salariess where OvertimePay > 50000


-- 6.show average base pay for all employees
-- query
select avg(BasePay) from salariess


-- 7.show the top 10 highest paid employees
-- query
select EmployeeName,TotalPay from salariess order by TotalPay desc limit 10


-- 8.show the average of basepay,overtimepay,otherpay from the each employee
-- query
select EmployeeName,(BasePay+OvertimePay+OtherPay)/3 Avg_base,other,overtime from salariess


-- 9.show the employees who have the name in the jobtite from the table
-- qurey
select EmployeeName,Jobtitle from salariess where JobTitle like '%manager%'


-- 10.show the employees with ajob title not equal to "manager"
-- qurey
select EmployeeName,Jobtitle from salariess where JobTitle <>'manager'


-- 11.show all employees with a totalpay between 50000 and 7500
-- qurey
select *from salariess where TotalPay between 50000 and 75000


-- 12.show all employee with a base pay less than 50,000 or total pay greater than 1,00,000
-- qurey
select * from salariess where BasePay< 50000 or TotalPay> 100000


-- 13.show all employees with total pay benefits value between 1,25,000 and 1,50,000 and a job title containing the word "Director" 
-- qurey
select * from salariess where TotalPayBenefits between 125000  and 150000 and JobTitle like '%Director%'


-- 14.show all employees order by their total pay benefits in descending order 
-- query
select * from salariess order by TotalPayBenefits desc

-- 15.show all  job titles with an average base pay of atleast 1,00,000 and order them by the average base pay in descending order
-- query 
select JobTitle, avg(BasePay) from salariess group by JobTitle having avg(BasePay)<=100000 order by avg(BasePay) desc

-- 16.show the delete the columns
alter table salariess
drop column BasePay
