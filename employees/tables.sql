CREATE TABLE IF NOT EXISTS departments(
	dept_no VARCHAR(50),
	dept_name VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS department_emps(
	emp_no INT NOT NULL,
	dept_no VARCHAR (50)
);

CREATE TABLE IF NOT EXISTS department_managers(
	dept_no VARCHAR(50),
	emp_no INT
);

CREATE TABLE IF NOT EXISTS emps(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(50),
	emp_birth_date VARCHAR(150),
	emp_first_name VARCHAR(350),
	emp_last_name VARCHAR(350),
	emp_sex VARCHAR(30),
	emp_hire_date VARCHAR(150)
);

CREATE TABLE IF NOT EXISTS salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

CREATE TABLE IF NOT EXISTS titles(
	title_id VARCHAR(50),
	title VARCHAR(250)
);