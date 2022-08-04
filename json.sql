USE sqldb;
SELECT JSON_OBJECT('name',userName,'height',height)
AS 'JSON 값' FROM usertbl WHERE height >= 180;

USE sqldb;
SET @JSON='{"usertbl" :
[
{"name": "강호동", "height": 182},
{"name": "이휘재", "height": 180},
{"name": "남희석", "height": 180},
{"name": "박수홍", "height": 183}
]
}';
SELECT JSON_VALID(@JSON) AS JSON_VALID;
SELECT JSON_SEARCH(@JSON, 'one', '남희석') AS JSON_SEARCH;
SELECT JSON_EXTRACT(@JSON, '$.usertbl[2].name') AS JSON_EXTRACT;

USE sqldb;
SET @JSON='{"usertbl" :
[
{"name": "강호동", "height": 182},
{"name": "이휘재", "height": 180},
{"name": "남희석", "height": 180},
{"name": "박수홍", "height": 183}
]
}';
SELECT JSON_insert(@JSON, '$.usertbl[0].mDate', '2022-08-02') AS JSON_insert;
SELECT JSON_replace(@JSON, '$.usertbl[0].name', '이두일') AS JSON_replace;
SELECT JSON_remove(@JSON, '$.usertbl[0]') AS JSON_remove;