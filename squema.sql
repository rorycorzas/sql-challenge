-- Create a new table
CREATE TABLE departments (
  dept_no VARCHAR(10) NOT NULL,
  dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_emp (
  emp_no INT,
  dept_no VARCHAR(10) NOT NULL
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(10) NOT NULL,
  emp_no INT
);

CREATE TABLE employees (
  emp_no INT,
  emp_title_id VARCHAR(30) NOT NULL,
  birth_date DATE,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex VARCHAR(30) NOT NULL,
  hire_date DATE 
);

CREATE TABLE salaries (
  emp_no INT,
  salaries INT
);
CREATE TABLE titles (
  title_id VARCHAR(30) NOT NULL,
  title VARCHAR(30) NOT NULL
);

/*
CREATE TABLE employees (
  emp_no INT,
  emp_title_id VARCHAR(30) NOT NULL,
  birth_date VARCHAR(30) NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex VARCHAR(30) NOT NULL,
  hire_date VARCHAR(30) NOT NULL 
);
*/

