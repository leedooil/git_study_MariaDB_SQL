USE sqldb;
SELECT uName, SUM(case when season='봄' then amount END) AS '봄',
SUM(case when season='여름' then amount END) AS '여름',
SUM(case when season='가을' then amount END) AS '가을',
SUM(case when season='겨울' then amount END) AS '겨울'
FROM pivottest GROUP BY uName;
