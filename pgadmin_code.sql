create table titles (
    title_id varchar not null,
    title varchar not null,
    primary key (title_id));

select * from titles; 

create table employees (
    emp_no int not null,
    emp_title_id varchar not null,
    birth_date date not null,
    first_name varchar not null,
    last_name varchar not null,
    sex varchar not null,
    hire_date date not null,
    foreign key (emp_title_id) references titles (title_id),
    primary key (emp_no));

select * from employees;

create table departments (
    dept_no varchar not null,
    dept_name varchar not null,
    primary key (dept_no));

select * from departments; 

create table dept_manager (
    dept_no varchar not null,
    emp_no int not null,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no),
    primary key (dept_no, emp_no));

select * from dept_manager;

CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) references employees(emp_no),
	FOREIGN KEY (dept_no) references departments(dept_no)
);

select * from dept_emp;

create table salaries (
    emp_no int not null,
    salary int not null,
    foreign key (emp_no) references employees (emp_no),
    primary key (emp_no));
	
select * from salaries;