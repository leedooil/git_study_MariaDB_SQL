SELECT LPAD('dooil',7,'lee'), RPAD('lee',7,'dooil');

SELECT LTRIM(' dooil '), RTRIM(' dooil ');
SELECT TRIM(' dooil ');

SELECT repeat('dooil ',2);
SELECT REPLACE('lee dooil','dooil','junyong');
SELECT REVERSE('dooil');

SELECT SPACE(5);
SELECT SUBSTRING('leedooil',4,5);
SELECT SUBSTRING_INDEX('leedooil','o',2);

SELECT ABS(-5), SIN(5), COS(5), TAN(5);

SELECT ceiling(3.5), FLOOR(3.5), ROUND(3.5);

SELECT CONV(10,10,2);
SELECT CONV(10,2,10);

SELECT MOD(5,2);
SELECT 5 % 2;
SELECT 5 MOD 2;

SELECT POW(2,4), SQRT(9);

SELECT FLOOR(1+(RAND()*(10-1)));

SELECT SIGN(-3);
SELECT SIGN(3);

SELECT TRUNCATE(12345.25689,2);
SELECT TRUNCATE(12345.25689,-2);

SELECT ADDDATE('2022-01-01',INTERVAL 31 DAY),
ADDDATE('2022-01-01',INTERVAL 1 MONTH);

SELECT subDATE('2022-01-01',INTERVAL 31 DAY),
subDATE('2022-01-01',INTERVAL 1 MONTH);
