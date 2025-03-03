CREATE TABLE dept_emp (
    emp_no      int,
    dept_no     char(4),
    PRIMARY KEY (emp_no, dept_no),                          -- composite primary key
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);