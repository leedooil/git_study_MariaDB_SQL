USE servletex;
CREATE TABLE t_board(
	articleNO int(10) PRIMARY KEY,
	parentNO int(100) DEFAULT 0,
	title VARCHAR(500) NOT NULL,
	content VARCHAR(4000),
	imageFileName VARCHAR(30),
	writeDate datetime DEFAULT CURRENT_TIMESTAMP,
	id VARCHAR(20) DEFAULT NULL,
	CONSTRAINT FK_ID FOREIGN KEY(id) REFERENCES t_member(id)
);

USE servletex;
INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id) 
VALUES (1 , 0, '테스트글입니다.', '테스트글입니다.', NULL, DEFAULT, 'hong');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id) 
VALUES (2 , 0, '안녕하세요.', '상품 후기입니다.', NULL, DEFAULT, 'hong');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id) 
VALUES (3 , 2, '답변입니다.', '상품 후기에 대한 답변입니다.', NULL, DEFAULT, 'hong');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id) 
VALUES (5 , 3, '답변입니다.', '상품 좋습니다.', NULL, DEFAULT, 'lee');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id) 
VALUES (4 , 0, '김유신입니다.', '김유신 테스트글입니다.', NULL, DEFAULT, 'kim');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id) 
VALUES (6 , 3, '상품 후기입니다.', '이순신씨의 상품 후기를 올립니다!!', NULL, DEFAULT, 'lee');
