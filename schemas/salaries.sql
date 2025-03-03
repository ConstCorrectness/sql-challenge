CREATE TABLE salaries (
    emp_no        int,
    salary        int NOT NULL,
    PRIMARY KEY   (emp_no, salary),                         -- composite key, salary updates
    FOREIGN KEY   (emp_no) REFERENCES employees(emp_no)
);