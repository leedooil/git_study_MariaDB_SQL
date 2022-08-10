USE triggerdb;
CREATE TABLE orderTBL(
orderNo INT AUTO_INCREMENT PRIMARY KEY,
userID VARCHAR(5),
prodName VARCHAR(5),
orderAmount int
);

CREATE TABLE prodTBL(
prodName VARCHAR(5),
prodAccount int
);

CREATE TABLE deliverTBL(
deliverNo INT AUTO_INCREMENT PRIMARY KEY,
prodName VARCHAR(5),
deliverAccount INT unique
);

USE triggerdb;
INSERT INTO prodtbl VALUES("사과", 100);
INSERT INTO prodtbl VALUES("배", 100);
INSERT INTO prodtbl VALUES("귤", 100);

DROP TRIGGER if EXISTS orderTrg;
USE triggerdb;
DELIMITER //
CREATE TRIGGER orderTrg AFTER INSERT ON ordertbl FOR EACH ROW
BEGIN
	UPDATE prodtbl SET prodAccount = prodAccount - NEW.orderAmount
	WHERE prodName = NEW.prodName;
END //
DELIMITER ;	

DROP TRIGGER if EXISTS prodTrg;
USE triggerdb;
DELIMITER //
CREATE TRIGGER prodTrg AFTER update ON prodtbl FOR EACH ROW
BEGIN
	DECLARE orderAmount INT;
	SET orderAmount = OLD.prodAccount - NEW.prodAccount;
	INSERT INTO delivertbl (prodName, deliverAccount) VALUES (NEW.prodName, orderAmount);
END //
DELIMITER ;

USE triggerdb;
INSERT INTO ordertbl VALUES (NULL, 'JOHN', '배', 5);	
SELECT * FROM ordertbl;
SELECT * FROM prodtbl;
SELECT * FROM delivertbl;

USE triggerdb;
INSERT INTO ordertbl VALUES (NULL, 'DANG', '사과', 9);	

SELECT * FROM ordertbl;
SELECT * FROM prodtbl;
SELECT * FROM delivertbl;