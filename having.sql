USE sqldb;
SELECT AVG(amount) AS '평균 구매 개수' FROM buytbl;

USE sqldb;
SELECT userID, AVG(amount) AS '평균 구매 개수' FROM buytbl GROUP BY userID;

USE sqldb;
SELECT userName, MAX(height) AS '거인족', MIN(height) AS '호빗족' FROM usertbl;

USE sqldb;
SELECT userName, MAX(height) AS '거인족', MIN(height) AS '호빗족' FROM usertbl GROUP BY userName;

USE sqldb;
SELECT userName, height FROM usertbl WHERE height = (SELECT MAX(height) FROM usertbl)
OR height = (SELECT MIN(height) FROM usertbl);

USE sqldb;
SELECT COUNT(*) FROM usertbl;

USE sqldb;
SELECT COUNT(mobile1) AS '휴대폰이 있는 사용자' FROM usertbl;

USE sqldb;
SELECT userID AS '사용자', SUM(price*amount) AS '총 구매액' FROM buytbl GROUP BY userID;

USE sqldb;
SELECT userID AS '사용자', SUM(price*amount) AS '총 구매액' FROM buytbl
 GROUP BY userID HAVING SUM(price*amount)>100;
 
USE sqldb;
SELECT userID AS '사용자', SUM(price*amount) AS '총 구매액' FROM buytbl
 GROUP BY userID HAVING SUM(price*amount)>100 ORDER BY SUM(price*amount);
 
USE sqldb;
SELECT userID AS '사용자', SUM(price*amount) AS '총 구매액' FROM buytbl
 GROUP BY userID HAVING SUM(price*amount)>100 ORDER BY SUM(price*amount)DESC;
 
USE sqldb;
SELECT userID AS '사용자', SUM(price*amount) AS '총 구매액' FROM buytbl
 GROUP BY userID HAVING SUM(price*amount)>100 ORDER BY SUM(price*amount)ASC;
 
 