USE sqldb;
SELECT * FROM usertbl WHERE userName = '강호동';

SELECT addr FROM usertbl;
SELECT DISTINCT addr FROM usertbl;

SELECT * FROM usertbl ORDER BY userName ASC LIMIT 2;

CREATE TABLE buytbl3 (SELECT userID, prodName FROM buytbl);
SELECT * FROM buytbl3;

SELECT userID, SUM(amount) FROM buytbl GROUP BY userID;

SELECT userID AS '사용자 아이디', SUM(price*amount) AS '총 구매액' from buytbl GROUP BY userID;

SELECT userID AS '사용자 아이디', avg(amount) AS '평균 구매 개수' from buytbl GROUP BY userID;

SELECT userName, height FROM usertbl WHERE height = (SELECT MAX(height) FROM usertbl)
OR height = (SELECT MIN(height) FROM usertbl);

SELECT COUNT(mobile1) AS '휴대폰이 있는 사용자' FROM usertbl;

SELECT userID AS '사용자', SUM(price * amount) AS '총 구매액' FROM buytbl
GROUP BY userID HAVING SUM(price * amount) > 1300 ORDER BY SUM(price * amount);

SELECT groupName, SUM(price * amount) AS '비용' FROM buytbl GROUP BY groupName WITH ROLLUP;

