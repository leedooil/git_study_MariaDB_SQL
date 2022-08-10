USE tabledb;
CREATE TABLE if NOT EXISTS testTBL (id INT, txt VARCHAR(10));
INSERT INTO testtbl VALUES (1, '이엑스아이디');
INSERT INTO testtbl VALUES (2, '애프터스쿨');
INSERT INTO testtbl VALUES (3, '에이오에이');

DROP TRIGGER if EXISTS testTrg;
USE tabledb;
DELIMITER //
CREATE TRIGGER testTrg AFTER DELETE ON testtbl FOR EACH ROW
BEGIN
	SET @msg = '가수 그릅이 삭제됨';
END //
DELIMITER ;	

USE tabledb;
SET @msg = '';
INSERT INTO testtbl VALUES (4,'나인뮤지스');
SELECT @msg;
UPDATE testtbl SET txt = '에이핑크' WHERE id =3;
SELECT @msg;
DELETE FROM testtbl WHERE id = 4;
SELECT @msg;

USE tabledb;
CREATE TABLE backup_userTBL(
userID CHAR(8) NOT NULL PRIMARY KEY,
userName VARCHAR(10) NOT NULL,
birthYear INT NOT NULL,
addr CHAR(2) NOT NULL,
mobile1 CHAR(3),
mobile2 CHAR(8),
height SMALLINT,
mDate DATE,
modType CHAR(2),
modDate DATE,
modUser VARCHAR(256)
);

DROP TRIGGER if EXISTS backUserTbl_UpdateTrg;
USE tabledb;
DELIMITER //
CREATE TRIGGER backUserTbl_UpdateTrg
	AFTER UPDATE ON usertbl FOR EACH row
BEGIN
	INSERT INTO backup_usertbl VALUES (OLD.userID, OLD.userName, OLD.birthYear, 
	OLD.addr, OLD.mobile1, OLD.mobile2, OLD.height, OLD.mDate, '수정', CURDATE(), CURRENT_USER() );
END //
DELIMITER ;	

DROP TRIGGER if EXISTS backUserTbl_DeleteTrg;
USE tabledb;
DELIMITER //
CREATE TRIGGER backUserTbl_DeleteTrg
	AFTER delete ON usertbl FOR EACH row
BEGIN
	INSERT INTO backup_usertbl VALUES (OLD.userID, OLD.userName, OLD.birthYear, 
	OLD.addr, OLD.mobile1, OLD.mobile2, OLD.height, OLD.mDate, '삭제', CURDATE(), CURRENT_USER() );
END //
DELIMITER ;		

USE tabledb;
UPDATE usertbl SET addr = '몽고' WHERE userID = 'JKW';

USE tabledb;
DELETE FROM usertbl WHERE height >= 177;
SELECT * FROM backup_usertbl;
	

























