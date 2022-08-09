DROP PROCEDURE if EXISTS errorProc;
DELIMITER //
CREATE PROCEDURE errorProc()
BEGIN
	DECLARE CONTINUE handler FOR 1146 SELECT '테이블이 없어요ㅜㅜ' AS '메세지';
	SELECT * FROM noTable;
END //
DELIMITER ;	

USE sqldb;
CALL errorProc();