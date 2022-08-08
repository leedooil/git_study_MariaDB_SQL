USE sqldb;
CREATE TABLE emptbl (emp CHAR(3), manager char(3), emptel VARCHAR(8));

INSERT INTO emptbl VALUES('나사장',NULL,'0000');
INSERT INTO emptbl VALUES('김재무','나사장','2222');
INSERT INTO emptbl VALUES('김부장','김재무','2222-1');
INSERT INTO emptbl VALUES('이부장','김재무','2222-2');
INSERT INTO emptbl VALUES('우대리','이부장','2222-2-1');
INSERT INTO emptbl VALUES('지사원','이부장','2222-2-2');
INSERT INTO emptbl VALUES('이영업','나사장','1111');
INSERT INTO emptbl VALUES('한과장','이영업','1111-1');
INSERT INTO emptbl VALUES('최정보','나사장','3333');
INSERT INTO emptbl VALUES('윤차장','최정보','3333-1');
INSERT INTO emptbl VALUES('이주임','윤차장','3333-1-1');

SELECT a.emp AS '부하직원', b.emp AS '직속상관', b.emptel AS '직속상관연락처'
FROM emptbl a INNER JOIN emptbl b ON a.manager = b.emp;

SELECT a.emp AS '부하직원', b.emp AS '직속상관', b.emptel AS '직속상관연락처'
FROM emptbl a INNER JOIN emptbl b ON a.manager = b.emp WHERE a.emp = '우대리';

USE sqldb;
SELECT stdName, addr FROM stdtbl UNION ALL SELECT clubName, roomNo FROM clubtbl;

USE sqldb;
SELECT userName, CONCAT(mobile1, mobile2) AS '전화번호' FROM usertbl
WHERE userName NOT IN (SELECT userName FROM usertbl WHERE mobile1 IS NULL);

USE sqldb;
SELECT userName, CONCAT(mobile1, mobile2) AS '전화번호' FROM usertbl
WHERE userName IN (SELECT userName FROM usertbl WHERE mobile1 IS NULL);

USE sqldb;
SELECT userName AS '연예인 이름' , addr AS '출생지역' FROM usertbl
WHERE userName IN (SELECT userName FROM usertbl WHERE addr ='경기');