create database payroll_service;
show databases;
use payroll_service;
create Table Employee_payroll(id int PRIMARY KEY,EmpName VARCHAR(100),EmpSalary INT,EmpStartDate VARCHAR(255));
insert into Employee_payroll value(1,"vishaka",30000,24-05-2020);
insert into Employee_payroll value(2,"vishu",20000,14-05-2021);
insert into Employee_payroll value(3,"kadam",25000,28-06-2019);
insert into Employee_payroll value(4,"shanvika",10000,4-01-2016);
insert into Employee_payroll value(5,"pihu",15000,13-07-2018);
SELECT * FROM payroll_service.employee_payroll;
select * from Employee_payroll where EmpName = 'vishaka';
select * from Employee_payroll
where EmpStartDate between '24-05-2020' and date(now());