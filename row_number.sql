USE sqldb;
SELECT ROW_NUMBER() over(ORDER BY height DESC) 
'키큰순위',userName,addr,height FROM usertbl;

USE sqldb;
SELECT ROW_NUMBER() over(ORDER BY height DESC,userName ASC) 
'키큰순위',userName,addr,height FROM usertbl;

USE sqldb;
SELECT addr, ROW_NUMBER() over(PARTITION BY addr ORDER BY height DESC, userName ASC)
"지역 별 키큰순위",userName,height FROM usertbl;