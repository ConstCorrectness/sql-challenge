CREATE TABLE departments (
    dept_no       char(4) PRIMARY KEY,
    dept_name     varchar(50) NOT NULL UNIQUE
);

CREATE TABLE titles (
    title_id    char(5) PRIMARY KEY,
    title       varchar(50) NOT NULL
);

CREATE TABLE employees (
    emp_no        int PRIMARY KEY,
    emp_title_id  char(5) NOT NULL,
    birth_date    date NOT NULL,
    first_name    varchar(50) NOT NULL,
    last_name     varchar(50) NOT NULL,
    sex           char(1) NOT NULL, -- CHECK (sex IN F OR M) too lazy to google how to do this.
    hire_date     date NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
    emp_no        int,
    salary        int NOT NULL,
    PRIMARY KEY   (emp_no, salary),                         -- composite key, salary updates
    FOREIGN KEY   (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
    emp_no      int,
    dept_no     char(4),
    PRIMARY KEY (emp_no, dept_no),                          -- composite primary key
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    emp_no      int,
    dept_no     char(4),
    PRIMARY KEY (emp_no, dept_no),                              -- composite primary key
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

