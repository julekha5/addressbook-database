CREATE DATABASE payroll_service;

USE payroll_service;

CREATE TABLE employee_payroll(id int not null auto_increment, 
							  name varchar(150),
							  salary double not null,
                              startDate date not null,
                              PRIMARY KEY (id) 
                              );

INSERT INTO employee_payroll (name,salary,startDate) VALUES
 ('Julekha', 30000, '2021-11-16'),
 ('Ashok', 31000, '2021-11-16'),
 ('Rohini', 35000, '2021-02-11'),
 ('Neeta', 32000, '2021-05-11'),
 ('Divya', 33000, '2021-01-11'),
 ('Durgesh', 30000, '2021-10-11'),
 ('Shubham', 34000, '2021-10-28'),
 ('Nitesh', 31500, '2021-10-30');

 SELECT * FROM employee_payroll;

 SELECT salary FROM employee_payroll WHERE name = 'Julekha' ;    

SELECT * FROM employee_payroll WHERE startDate BETWEEN '2021-01-11' AND DATE(NOW());

ALTER TABLE employee_payroll ADD gender varchar(1) NOT NULL AFTER name;

UPDATE employee_payroll SET gender = 'F'
WHERE name = 'Julekha' or name = 'Rohini' or name ='Divya' or name = 'Neeta'; 

UPDATE employee_payroll SET gender = 'M' 
WHERE name = 'Ashok' or name = 'Durgesh' or name = 'Shubham' or name = 'Nitesh';

SELECT SUM(salary) FROM employee_payroll 
WHERE gender = 'F' GROUP BY gender;

SELECT SUM(salary) FROM employee_payroll 
WHERE gender = 'M' GROUP BY gender;

SELECT AVG(salary) FROM employee_payroll 
WHERE gender = 'F' GROUP BY gender;

SELECT AVG(salary) FROM employee_payroll 
WHERE gender = 'M' GROUP BY gender;

SELECT MAX(salary) FROM employee_payroll 
WHERE gender = 'F' GROUP BY gender;

SELECT MAX(salary) FROM employee_payroll 
WHERE gender = 'M' GROUP BY gender;

SELECT MIN(salary) FROM employee_payroll 
WHERE gender = 'F' GROUP BY gender;

SELECT MIN(salary) FROM employee_payroll 
WHERE gender = 'M' GROUP BY gender;

SELECT COUNT(*) FROM employee_payroll 
WHERE gender = 'F' GROUP BY gender;

SELECT COUNT(*) FROM employee_payroll 
WHERE gender = 'M' GROUP BY gender;

