CREATE TABLE Titles(
	title_id VARCHAR(20) PRIMARY KEY NOT NULL,
	title VARCHAR(20) NOT NULL
	
);

CREATE TABLE Departments(
	dept_no VARCHAR(20) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(20) NOT NULL
);

CREATE TABLE Employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(30)NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(20),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Dept_emp(
	emp_no INT,
	dept_no VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);


CREATE TABLE Dept_manager(
	dept_no VARCHAR(20) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY(dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

