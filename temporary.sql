USE employees;
CREATE TEMPORARY TABLE if NOT EXISTS temptbl (id INT, NAME CHAR(7));
CREATE TEMPORARY TABLE if NOT EXISTS employees (id INT, NAME CHAR(7)); 
DESCRIBE temptbl;
DESCRIBE employees;

USE employees;
INSERT INTO temptbl VALUES (1, 'This');
INSERT INTO employees VALUES (2, 'MariaDB');
SELECT * FROM temptbl;
SELECT * FROM employees;

USE employees;
SELECT * FROM temptbl;
SELECT * FROM employees;

USE employees;
DROP table tempTBL;

USE employees;
SELECT * FROM employees;