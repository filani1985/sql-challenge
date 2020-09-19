create table titles (
title_id varchar primary key , 
title varchar not null
);

create table employees (
emp_no varchar primary key,
emp_title_id varchar references titles(title_id)  not null,
birth_date varchar not null,
first_name varchar not null,
last_name varchar not null,
sex varchar not null,
hire_date varchar not null
);


create table departments(
dept_no varchar primary key,
dept_name varchar not null
);

create table dept_emp (
emp_no varchar,
dept_no varchar,
foreign key(emp_no) references employees(emp_no),
foreign key(dept_no) references departments(dept_no),	
primary key(emp_no,dept_no)
);

create table dept_manager (
dept_no varchar,
emp_no varchar,
foreign key(emp_no) references employees(emp_no),
foreign key(dept_no) references departments(dept_no),	
primary key(dept_no,emp_no)
);

create table salaries(
emp_no varchar primary key,
salary decimal not null,
foreign key(emp_no) references employees(emp_no)
);
