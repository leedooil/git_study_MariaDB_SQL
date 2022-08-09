CREATE DATABASE if NOT EXISTS compressDB;
USE compressdb;
CREATE TABLE normalTBL (emp_no INT, first_name VARCHAR(14));
CREATE TABLE compressTBL (emp_no INT, first_name VARCHAR(14)) ROW_FORMAT = COMPRESSED;

USE compressdb;
INSERT INTO normaltbl SELECT emp_no, first_name FROM employees.employees;
INSERT INTO compresstbl SELECT emp_no, first_name FROM employees.employees;

SHOW TABLE STATUS FROM compressDB;

USE sqldb;
DROP DATABASE if EXISTS compressDB;