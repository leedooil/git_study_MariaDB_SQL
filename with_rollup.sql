USE sqldb;
SELECT num, groupName, SUM(price*amount) AS '비용' FROM buytbl
GROUP BY groupName, num WITH ROLLUP;

USE sqldb;
SELECT groupName, SUM(price*amount) AS '비용' FROM buytbl
GROUP BY groupName WITH ROLLUP;

USE sqldb;
SELECT num, groupName, SUM(price*amount) AS '비용' FROM buytbl
GROUP BY groupName, num;

USE sqldb;
SELECT groupName, SUM(price*amount) AS '비용' FROM buytbl
GROUP BY groupName;