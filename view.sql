USE tabledb;
SELECT userID, userName, addr FROM usertbl;

USE tabledb;
CREATE VIEW v_userTBL AS SELECT userID, userName, addr FROM usertbl;
SELECT * FROM v_userTBL;

USE tabledb;
CREATE VIEW v_userbuyTBL AS SELECT u.userID, u.userName, b.prodName, u.addr,
CONCAT(u.mobile1, u.mobile2) AS '연락처' FROM usertbl u INNER JOIN buytbl b
ON u.userID = b.userID;

SELECT * FROM v_userbuyTBL WHERE userName = '김범수';

USE sqldb;
CREATE VIEW v_userbuytbl AS SELECT u.userID AS 'USER ID', u.userName AS 'USER NAME',
b.prodName AS 'PRODUCT NAME', u.addr, CONCAT(u.mobile1, u.mobile2) AS 'MOBILE PHONE'
FROM usertbl u INNER JOIN buytbl b ON u.userID = b.userID;

SELECT `USER ID`, `USER NAME`, `MOBILE PHONE` FROM v_userbuytbl;

USE tabledb;
CREATE VIEW v_userbuytbl2 AS SELECT u.userID, u.userName, b.prodName, u.addr,
CONCAT(u.mobile1, u.mobile2) AS mobile FROM usertbl u INNER JOIN buytbl b ON u.userID = b.userID;

USE tabledb;
INSERT INTO v_userbuytbl2 VALUES ('PKL','박경리','운동화','경기','00000000000');

SELECT * FROM v_userbuytbl2;
