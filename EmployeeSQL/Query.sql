-- 1) List the following details of each employee :employee number,last name,first name,sex, salary

       select e.emp_no,e.last_name,e.first_name,e.sex,s.salary from Employees e join salaries s 
       on e.emp_no=s.emp_no

-- 2) List first name, last name and hire_date for employees who were hired in 1986

      select first_name, last_name , hire_date from employees where right(hire_date,4)='1986'

-- 3) List the Manager of each department with following information : department number,department name,
--    the manager's employee number , last name,first name.

      select d.dept_no,d.dept_name, m.emp_no,e.last_name,e.first_name from departments d join dept_manager m 
      on d.dept_no=m.dept_no join employees e on e.emp_no=m.emp_no

-- 4) List the department of each employee with the following information :employee number,last name, 
--    first name and department name 
      
      select e.emp_no,e.last_name,e.first_name,d.dept_name from employees e join dept_emp de
      on e.emp_no=de.emp_no join departments d on de.dept_no=d.dept_no

-- 5) List first name , last name and sex for employees whose first name is 'Hercules' and last name begin
--    with 'B'
 
      select first_name ,last_name , sex from employees  where first_name='Hercules' and last_name like 'B%'

-- 6) List all employees in the Sales department including thier employee number , last name , first name,
--    and department name

      select e.emp_no, e.last_name,e.first_name,d.dept_name from employees e join dept_emp de 
      on e.emp_no=de.emp_no join departments d on de.dept_no=d.dept_no where d.dept_name='Sales' 
   
-- 7) List all the employees in the Sales and Development departments including thier employee number,
-- last name, first name and department name 

     select e.emp_no, e.last_name,e.first_name,d.dept_name from employees e join dept_emp de 
     on e.emp_no=de.emp_no join departments d on de.dept_no=d.dept_no where d.dept_name
     in ('Sales' , 'Development')
   
 -- 8) In descending order , list the frequency count of employees last_name i.e how many employee
 -- share each last name 
 
     select last_name , count(emp_no) count_of_last_name from employees e group by last_name 
     order by count(emp_no)desc