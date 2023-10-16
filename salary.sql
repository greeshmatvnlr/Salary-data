-- use sf

-- 1    Show all columns and rows in the table
select * from salary

-- 2    Show only the EmployeeName and JobTitle columns 

 select EmployeeName, JobTitle from salary
 
-- 3    Show the number of employees in the table

select count(*) from salary

-- 4    Show the unique job titles in the table

select distinct(JobTitle) from salary

-- No: of unique job title 
select count(distinct JobTitle) from salary

-- 5    Show the job title and overtime pay for all employees with overtime
--      pay greater than 1000

select JobTitle, OvertimePay from salary where OvertimePay > 50000

-- 6    Show the average base pay for all employees.

select avg(BasePay) as "AvgBasePay" from salary 

-- 7   Show the top 10 highest paid employees

select EmployeeName, TotalPay from salary 
order by TotalPay desc
limit 10;

-- 8 Show the average of basepay, overtimepay, and otherpay for each employees

select employeename, (Basepay + Overtimepay + Otherpay)/3 as AVG_AllPays
 from salary 
 
 -- 9 Show all employees who have the word "Manager" in their job title
 
 select employeename, jobtitle from salary where jobtitle like "%Manager%"
 
-- Here 'like' used to perform a partial match on the job title column. 
-- The % sign called as 'wild card character' who match any sequence of the 
-- charecter; any sequence before or after the manager charecter

-- 10   Show all employees with a job title not equal to 'Manager'

 select employeename, jobtitle from salary where jobtitle not like "%Manager%"