SELECT * FROM emps;
SELECT * FROM salaries;

--1. List the following 
--details of each employee: 
--employee number, last name, first name, sex, and salary.

SELECT emp.emp_no, 
	emp.emp_last_name, 
	emp.emp_first_name,
	emp.emp_sex,
	sal.salary
	FROM salaries as sal
	INNER JOIN emps AS emp ON
	emp.emp_no = sal.emp_no;
	
--List first name, last name, and hire date for employees who were hired in 1986.

SELECT emp_first_name,
	emp_last_name,
	emp_hire_date
FROM emps
WHERE emp_hire_date LIKE '%1986';

--3. List the manager of each department with the 
--following information: department number, 
--department name, the manager's employee number, last name, first name.
	
SELECT * FROM department_managers;
SELECT * FROM departments;	
	
SELECT dm.dept_no, 
	dm.emp_no, 
	emp.emp_first_name,
	emp.emp_last_name,
	d.dept_name
FROM(
	department_managers as dm
	INNER JOIN emps AS emp ON dm.emp_no = emp.emp_no
	INNER JOIN departments as d ON d.dept_no = dm.dept_no
);	

--4. List the department of each employee with the 
--following information: employee number, 
--last name, first name, and department name.

SELECT * FROM department_emps;

SELECT de.emp_no, 
	emp.emp_no, 
	emp.emp_first_name,
	emp.emp_last_name,
	d.dept_name
FROM(
	emps as emp
	INNER JOIN department_emps AS de ON emp.emp_no = de.emp_no
	INNER JOIN departments as d ON d.dept_no = de.dept_no
);	

--5. List first name, last name, and sex for 
--employees whose first name is "Hercules" and last names begin with "B."

SELECT emp_first_name,
	emp_last_name,
	emp_sex
FROM emps 
WHERE emp_first_name LIKE 'Hercules'
AND emp_last_name LIKE 'B%';

--6. List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.

SELECT de.emp_no, 
	emp.emp_no, 
	emp.emp_first_name,
	emp.emp_last_name,
	d.dept_name
FROM(
	emps as emp
	INNER JOIN department_emps AS de ON emp.emp_no = de.emp_no
	INNER JOIN departments as d ON d.dept_no = de.dept_no
)
WHERE dept_name LIKE 'Sales';	

--7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT de.emp_no, 
	emp.emp_no, 
	emp.emp_first_name,
	emp.emp_last_name,
	d.dept_name
FROM(
	emps as emp
	INNER JOIN department_emps AS de ON emp.emp_no = de.emp_no
	INNER JOIN departments as d ON d.dept_no = de.dept_no
)
WHERE dept_name LIKE 'Development'
OR dept_name LIKE 'Sales';	

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

SELECT emp_last_name, COUNT(emp_last_name) AS "name_count"
FROM emps
GROUP BY emp_last_name
ORDER BY "name_count" DESC
;
