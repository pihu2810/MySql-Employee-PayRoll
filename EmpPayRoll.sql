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
alter table Employee_payroll add gender char(1);

alter table Employee_payroll add gender char(2) after EmpName;

update Employee_payroll set gender = 'M' where id = 3;
update Employee_payroll set gender = 'F' where id IN (1,2,4,5);
select sum(EmpSalary) from Employee_payroll;
select gender,sum(EmpSalary) from Employee_payroll group by gender;

select gender,avg(EmpSalary) from Employee_payroll group by gender;

select gender,max(EmpSalary) from Employee_payroll group by gender;

select gender,min(EmpSalary) from Employee_payroll group by gender;

select gender,count(*) from Employee_payroll group by gender;
alter table Employee_payroll add phone_number varchar(13) after EmpName;
alter table Employee_payroll add address varchar(200) after phone_number;
alter table Employee_payroll add department varchar(100) not null after address;
alter table Employee_payroll alter address set default 'TBD';
insert into Employee_payroll (id,EmpName,department,EmpSalary,EmpStartDate,gender) 
values(7,'Kunal','CSE', 49000, '13-08-20014','M');
alter table Employee_payroll rename column EmpSalary to basic_pay;
alter table Employee_payroll add deductions double not null after basic_pay;
alter table Employee_payroll add taxable_pay double not null after deductions;
alter table Employee_payroll add tax double not null after taxable_pay;
alter table Employee_payroll add net_pay double not null after tax;
insert into Employee_payroll 
       (id,EmpName,phone_number,address,department,gender,basic_pay,deductions,taxable_pay,tax,net_pay,EmpstartDate)
values(8,'Terissa','9888888888','hyd','Sales','F',4800000,100000,40000,5400,4000000,'23-08-2021');
insert into Employee_payroll 
       (id,EmpName,phone_number,address,department,gender,basic_pay,deductions,taxable_pay,tax,net_pay,EmpstartDate)
values(9,'Terissa','9888888888','pune','Marketing','F',4800000,100000,40000,5400,4000000,'23-08-2021');
create table employee(
id int not null auto_increment primary key,
name varchar(50) not null,
gender varchar(1),
phone_number varchar(13),
address varchar(200),
startDate Date not null
);
desc employee;

create table payroll(
id int not null auto_increment primary key,
basic_pay double,
deductions double,
income_tax double,
taxable_pay double,
tax double,
net_pay double,
emp_ID int,
foreign key(emp_ID) references employee(id)
);
desc payroll;

create table department(
  id int not null auto_increment primary key,
  dept_name varchar(20) not null
  );
  desc department;

create table employee_department(
  employee_id int not null,
  department_id int not null,
  foreign key(employee_id) references employee(id),
  foreign key(department_id) references department(id),
  primary key(employee_id,department_id)
);
desc employee_department;
select * from employee;
select * from payroll;
select * from department;
select * from employee_department;
show tables;

drop table employee;
drop table payroll;
drop table employee_department;

insert into employee(name, gender, phone_number, address,startDate)
values ('Rani', 'F','9843256578','TS','2021-01-10');
insert into employee(name, gender, phone_number, address,startDate)
values ('Sema', 'F','7656565645','Mumbai','2021-10-01');
insert into employee(name, gender, phone_number, address,startDate)
values ('Raj', 'M','8675675656','AP','2021-01-04');
insert into employee(name, gender, phone_number, address,startDate)
values ('Sham', 'M','9745643534','TN','2021-04-10');

insert into payroll(basic_pay, deductions, income_tax, taxable_pay, tax, net_pay,emp_ID)
values (400000,1000,500,5000,600,350000,1);
insert into payroll(basic_pay, deductions, income_tax, taxable_pay, tax, net_pay,emp_ID)
values (500000,2000,500,5000,600,450000,2);
insert into payroll(basic_pay, deductions, income_tax, taxable_pay, tax, net_pay,emp_ID)
values (600000,3000,500,5000,600,550000,3);
insert into payroll(basic_pay, deductions, income_tax, taxable_pay, tax, net_pay,emp_ID)
values (700000,4000,500,5000,600,650000,4);

insert into department(dept_name)
values('Sales'),('Marketing');
insert into department(dept_name)
values('HR');
select sum(basic_pay) from payroll;
select gender, sum(basic_pay) from payroll join employee group by gender;
select gender, avg(basic_pay) from payroll join employee group by gender ;
select gender, max(basic_pay) from payroll join employee group by gender ;
select gender, min(basic_pay) from payroll join employee group by gender ;
select gender, count(*) from employee group by gender;

insert into employee(name, gender, phone_number, address,startDate)
values ('Terissa', 'f','9895689865','NY','2021-04-10');

insert into payroll(basic_pay, deductions, income_tax, taxable_pay, tax, net_pay,emp_ID)
values (300000,1000,500,5000,600,350000,5);

insert into employee_department(employee_id,department_id)values(1,1);
