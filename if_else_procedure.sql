DROP PROCEDURE if EXISTS ifproc;
DELIMITER //
CREATE PROCEDURE ifProc()
BEGIN
	DECLARE var1 INT;
	SET var1 = 100;
	
	if var1 = 100 then
		SELECT '100입니다.';
	ELSE
		SELECT '100이 아닙니다.';
	END if;
END //
DELIMITER ;

CALL ifProc();
			
USE employees;
DROP PROCEDURE if EXISTS ifProc2;

DELIMITER //
CREATE PROCEDURE ifProc2()
BEGIN
DECLARE hireDATE DATE;
DECLARE CURDATE DATE;
DECLARE days INT;

SELECT hire_date INTO hireDate FROM employees.employees WHERE emp_no = 10001;

SET CURDATE = CURRENT_DATE();
SET days = DATEDIFF(CURDATE, hireDATE);

if (days/365) >= 5 then
	SELECT CONCAT('입사한지 ', days, '일이나 지났습니다. 축하합니다!');
else	
	SELECT '입사한지 ' + days + '일밖에 안되었네요. 열심히 일하세요.';
	END if;
END //
DELIMITER ;

CALL ifproc2();

DROP PROCEDURE if EXISTS ifProc3;
USE sqldb;
DELIMITER //
CREATE PROCEDURE ifProc3()
BEGIN
	DECLARE POINT INT;
	DECLARE credit CHAR(1);
	SET POINT = 77;
	
	if POINT >= 90 then
		SET credit = 'A';
	ELSEIF POINT >= 80 then
		SET credit = 'B';
	ELSEIF POINT >= 70 then
		SET credit = 'C';
	ELSEIF POINT >= 60 then
		SET credit = 'D';
	ELSE
		SET credit = 'F';
	END if;
	SELECT CONCAT('취득점수==>',POINT), CONCAT('학점==>',credit);
END //
DELIMITER;

CALL ifProc3();		
						
