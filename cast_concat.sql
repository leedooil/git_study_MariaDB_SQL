USE sqldb;

SET @myVar1 = 5;
SET @myVar2 = 3;
SET @myVar3 = 4.25;
SET @myVar4 = '가수 이름 ==> ';
SELECT @myVar1;
SELECT @myVar2 +@myVar3;

SELECT @myVar4, userName FROM usertbl WHERE height > 180;

PREPARE myQuery
FROM 'select userName, height from usertbl order by height limit ?';
EXECUTE myQuery USING @myVar2;

SELECT CAST(AVG(amount) AS SIGNED INTEGER) AS '평균 구매 개수' FROM buytbl;
SELECT CONVERT(AVG(amount) , SIGNED INTEGER) AS '평균 구매 수량' FROM buytbl;

SELECT CAST('2022$12$12' AS DATE);
SELECT CAST('2022/12/12' AS DATE);
SELECT CAST('2022%12%12' AS DATE);
SELECT CAST('2022@12@12' AS DATE);

SELECT num, CONCAT(CAST(price AS CHAR(10)),'X',CAST(amount AS CHAR(4)),'=') AS '단가*수량',
price * amount AS '구매액' FROM buytbl;

SELECT '100'+'200';
SELECT CONCAT('100','200');
SELECT CONCAT(100,'200');
SELECT 1 > '2mega';
SELECT 3 > '2MEGA';
SELECT 0 = 'mega2';
