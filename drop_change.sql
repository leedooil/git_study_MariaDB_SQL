USE TABLEdb;
ALTER TABLE usertbl ADD homepage VARCHAR(30) DEFAULT 'http://www.hanbit.co.kr' NULL; 

USE tabledb;
ALTER TABLE usertbl DROP COLUMN homepage;

USE tabledb;
ALTER TABLE usertbl CHANGE COLUMN userName uName VARCHAR(20) NULL;

USE tabledb;
ALTER TABLE usertbl DROP PRIMARY KEY;

USE tabledb;
ALTER TABLE usertbl CHANGE COLUMN uName userName VARCHAR(20) NULL;