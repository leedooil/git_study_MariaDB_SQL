USE sqldb;
CREATE table bigTBL1 (SELECT * FROM employees.employees);
CREATE table bigTBL2 (SELECT * FROM employees.employees);
CREATE table bigTBL3 (SELECT * FROM employees.employees);

DELETE FROM bigtbl1;
DROP TABLE bigtbl2;
TRUNCATE TABLE bigtbl3;