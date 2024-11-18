# CREATING DATABASE AND TABLE
create database company;
use company;
create table employees(
   id int primary key auto_increment,
   name varchar(100),
   position varchar(100),
   salary decimal(10,2),
   date_of_joining date
);
# VALUE INSERTION
insert into employees( name, position, salary, date_of_joining)
values ("John Doe", "Manager", 55000.00,"2020-01-15"),
       ("Jane Smith","Developer",48000.00,"2019-07-10"),
       ("Alice Johnson","Designer",45000.00,"2021-03-22"),
       ("Bob Brown","Developer",50000.00,"2018-11-01");
 select * from employees;

# Q3. Query to Retrive all Developers  
select * from employees where position="Developer";

# Q4. Query to Update salary of Alice to 46000.00 
set sql_safe_updates=0;
update employees set salary= 46000.00 where name="Alice Johnson";

# Q5. Query to Delete employee record of Bob Brown
 delete from employees where name="Bob Brown";
 
 # Q6. Query to find the employee who have salary more than 48000.
 select * from employees where salary>48000.00;
 
 # Q7. Query to add anew column email
  alter table employees
 add email varchar(50);

 # Q8. Query to update email for John Doe
 update employees set email="john.doe@company.com" where name="JOhn Doe";

 # Q9. Query to retrive only name and salary
 select name, salary from employees;

 # Q10. Query to count number of employees who joined after jan 1,2020
 select count(*) from employees where date_of_joining > "2020-01-01";

 # Q11. Query to order employees by salary in descending order
 select * from employees order by salary desc;

 # Q12. Query to drop the email column from employees table
 alter table employees drop column email;

 # Q13. Query to find the employee with highest salary
 select * from employees order by salary desc limit 1;
 select * from employees;