USE sqldb;

SELECT if (100>200,'참이다','거짓이다');

SELECT IFNULL(NULL,'널이군요'), IFNULL(100,'널이군요');

SELECT NULLIF(100,100), NULLIF(200,100);

SELECT ASCII('A'), CHAR(65);

SELECT BIT_LENGTH('ABC'), CHAR_LENGTH('ABC'), LENGTH('ABC');
SELECT BIT_LENGTH('이두일'), CHAR_LENGTH('이두일'), LENGTH('이두일');

SELECT CONCAT_WS('★','이','두','일');

SELECT FORMAT(123456.123456,4);

SELECT INSTR('leedooil','d');
SELECT LOCATE('d','leedooil');

SELECT BIN(10),HEX(12),OCT(9);

SELECT INSERT ('leedooil',4,2,'sam');

SELECT LEFT('leedooil',3), RIGHT('leedooil',5);

SELECT UPPER('LeeDooIl'), LOWER('LeeDooIl');