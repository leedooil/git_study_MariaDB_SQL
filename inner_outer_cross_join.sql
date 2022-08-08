USE sqldb;
SELECT s.stdName, s.addr, c.clubName, c.roomNo
FROM stdtbl s
INNER JOIN stdclubtbl sc ON s.stdName = sc.stdName
INNER JOIN clubtbl c ON sc.clubName = c.clubName
ORDER BY s.stdName;

USE sqldb;
SELECT c.clubName, c.roomNo, s.stdName, s.addr
FROM stdtbl s
INNER JOIN stdclubtbl sc ON s.stdName = sc.stdName
INNER JOIN clubtbl c ON sc.clubName = c.clubName
ORDER BY c.clubName;

USE sqldb;
SELECT s.stdName, s.addr, c.clubName, c.roomNo
FROM stdtbl s
LEFT OUTER JOIN stdclubtbl sc ON s.stdName = sc.stdName
LEFT OUTER JOIN clubtbl c ON sc.clubName = c.clubName;

USE sqldb;
SELECT * FROM buytbl CROSS JOIN usertbl;

USE employees;
SELECT COUNT(*) AS '데이터개수' FROM employees CROSS JOIN departments;