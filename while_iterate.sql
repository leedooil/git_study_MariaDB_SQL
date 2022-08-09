DROP PROCEDURE if EXISTS whileProc;
USE sqldb;
DELIMITER //
CREATE PROCEDURE whileProc()
BEGIN
DECLARE i INT;
DECLARE hap INT;
	SET i = 1;
	SET hap = 0;
	
	while (i <= 100) do
	SET hap = hap + i;
	SET i = i +1;
	END while;
	
SELECT hap;
END //
DELIMITER ;

CALL whileProc();

DROP PROCEDURE if EXISTS whileProc2;
USE sqldb;
DELIMITER //
CREATE PROCEDURE whileProc2()
BEGIN
	DECLARE i INT;
	DECLARE hap INT;
	SET i = 1;
	SET hap = 0;
	
	myWhile: while (i <= 100) do
	if(i%7 = 0) then
	SET i = i+1;
	iterate myWhile;
	END if;
	
	SET hap = hap + i;
	if (hap > 1000) then
	leave mywhile;
	END if;
	
	SET i = i +1;
	END while;
	
SELECT hap;
END //
DELIMITER ;

USE sqldb;
CALL whileProc2();
		