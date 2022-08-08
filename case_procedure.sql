dorp PROCEDURE if EXISTS caseProc;
USE sqldb;
DELIMITER //
CREATE PROCEDURE caseProc()
BEGIN
	DECLARE POINT INT;
	DECLARE credit CHAR(1);
	SET POINT = 93;
	
	case
	when POINT >= 90 then
	SET credit = 'A';
	when POINT >= 80 then
	SET credit = 'B';
	when POINT >= 70 then
	SET credit = 'C';
	when POINT >= 60 then
	SET credit = 'D';
	else
	SET credit = 'F';
	END case;
	SELECT CONCAT('취득점수==>',POINT), CONCAT('학점==>',credit);
END //
DELIMITER;

CALL caseProc();

USE sqldb;

SELECT u.userID, u.userName, SUM(price*amount) AS '총 구매액',
	case
		when (SUM(price*amount) >= 1500) then '최우수고객'
		when (SUM(price*amount) >= 1000) then '우수고객'
		when (SUM(price*amount) >= 1) then '일반고객'
		ELSE '유령고객'
		END AS '고객등급'
FROM buytbl b RIGHT OUTER JOIN usertbl u ON b.userID = u.userID
GROUP BY u.userID, u.userName ORDER BY SUM(price*amount) DESC;			