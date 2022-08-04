USE sqldb;
SELECT DENSE_RANK() over(ORDER BY height DESC) "키큰순위",userName,addr,height FROM usertbl;

USE sqldb;
SELECT RANK() over(ORDER BY height DESC) "키큰순위",userName,addr,height FROM usertbl;

USE sqldb;
SELECT ntile(2) over(ORDER BY height DESC) "반번호",userName,addr,height FROM usertbl;

USE sqldb;
SELECT NTILE(3) over(ORDER BY height DESC) "반번호",userName,addr,height FROM usertbl;

USE sqldb;
SELECT userName,addr,height AS "키",height-(LEAD(height,1) over(ORDER BY height DESC))
AS "다음 사람과 키 차이" FROM usertbl;

USE sqldb;
SELECT userName,addr,height AS "키",height-(first_value(height) over
(partition BY addr ORDER BY height DESC)) AS "지역별 최대키와 차이" FROM usertbl;

USE sqldb;
SELECT addr,userName,height AS "키",(CUME_DIST() over(PARTITION BY addr ORDER BY height DESC))
*100 AS "누적인원 백분율%" FROM usertbl;

