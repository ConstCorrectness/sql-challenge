# SQL Challenge
---

![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white)
![C++](https://img.shields.io/badge/c++-%2300599C.svg?style=for-the-badge&logo=c%2B%2B&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)



[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)



### Databases

- **departments**: Stores department details.
- **titles**: Contains job titles.
- **employees**: Stores personal employee information.
- **salaries**: Tracks salary details.
- **dept\_emp**: Maps employees to departments.
- **dept\_manager**: Tracks department managers.


## SQL Queries

Several SQL queries were used to extract insights from the database, including:

1. **Employee Salary Report**: basic select
2. **Employees Hired in 1986**: where clause
3. **Department Managers**: joining, formatting
4. **Employee Department Details**: joining, formatting
5. **Employees Named 'Hercules B...'**: regexing
6. **Employees in Sales and Development**: boolean operations
7. **Most Common Last Names**: aggregation

## Installation & Setup

### **Prerequisites**

- PostgreSQL 

### **Database Setup**

1. Clone this repository:
   ```sh
   git clone https://github.com/constcorrectness/sql-challenge.git
   cd sql-challenge
   ```

2. Open PostgreSQL and create a database:
   ```sql
   CREATE DATABASE employee_db;
   ```

3. Load the schema and data:
   ```sh
   psql -d employee_db -f schemas/all_schemas.sql
   psql -d employee_db -f data/load_tables.sql
   ```

## Usage

To run queries, connect to the database using:

```sh
psql -d employee_db
```

Then, execute any SQL query by running:

```sql
SELECT * FROM employees LIMIT 10;
```

## Contributors

- [Rob R](https://github.com/constcorrectness)

## License

This project is licensed under the GNU GPL v3
