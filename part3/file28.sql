-- Employee table with salary, department, age and contact info
-- Created by assistant on 2026-08-12
CREATE TABLE IF NOT EXISTS `employee` (
	`employee_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`first_name` VARCHAR(100) NOT NULL,
	`last_name` VARCHAR(100) NOT NULL,
	`department` VARCHAR(100) NOT NULL,
	`salary` DECIMAL(12,2) NOT NULL DEFAULT 0.00,
	`age` TINYINT UNSIGNED DEFAULT NULL,
	`hire_date` DATE DEFAULT NULL,
	`email` VARCHAR(255) DEFAULT NULL,
	`phone` VARCHAR(50) DEFAULT NULL,
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`employee_id`),
	KEY `idx_department` (`department`),
	KEY `idx_salary` (`salary`)
) 

-- Example: find employees with salary > 3000
-- SELECT * FROM `employee` WHERE `salary` > 3000;

-- Seed data: 10 employees
INSERT INTO `employee` (`first_name`,`last_name`,`department`,`salary`,`age`,`hire_date`,`email`,`phone`) VALUES
('John','Doe','Sales',3200.00,29,'2019-06-15','john.doe@example.com','555-0101'),
('Jane','Smith','Engineering',7500.50,34,'2017-03-20','jane.smith@example.com','555-0102'),
('María','García','HR',2800.00,41,'2020-11-01','maria.garcia@example.com','555-0103'),
('Li','Wei','Finance',5400.00,38,'2018-08-10','li.wei@example.com','555-0104'),
('Ahmed','Khan','Marketing',3100.00,27,'2021-01-25','ahmed.khan@example.com','555-0105'),
('Olga','Petrova','Engineering',8200.00,45,'2012-05-03','olga.petrova@example.com','555-0106'),
('Carlos','Silva','Sales',2950.00,30,'2022-09-12','carlos.silva@example.com','555-0107'),
('Fatima','Noor','Support',3050.00,26,'2023-02-01','fatima.noor@example.com','555-0108'),
('Tom','Brown','Finance',4600.75,50,'2010-12-01','tom.brown@example.com','555-0109'),
('Sara','Lee','HR',3300.00,31,'2016-07-18','sara.lee@example.com','555-0110');


SELECT
department,
COUNT(*) AS employee_count,
SUM(salary) AS total_salary,
AVG(salary) AS avg_salary,
MIN(salary) AS min_salary,
MAX(salary) AS max_salary
FROM employee
GROUP BY department
ORDER BY total_salary DESC;

db.employee.aggregate([ { $group: { _id: "$department", employee_count: { $sum: 1 }, total_salary: { $sum: "$salary" }, avg_salary: { $avg: "$salary" }, min_salary: { $min: "$salary" }, max_salary: { $max: "$salary" } }}, { $project: { department: "$_id", employee_count: 1, total_salary: 1, avg_salary: 1, min_salary: 1, max_salary: 1, id: 0 }}, { $sort: { total_salary: -1 } } ]);

