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