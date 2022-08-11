USE servletex;
SELECT CASE WHEN LEVEL-1 > 0 then CONCAT(CONCAT(REPEAT('    ', level  - 1),'┗'), tb.articleNO)
                 ELSE tb.articleNO
           END AS level
     , tb.articleNO
     , tb.parentNO
     , tb.title
     , tb.content

  FROM
     (SELECT function_hierarchical() AS articleNO, @level AS level
        FROM (SELECT @start_with:=0, @articleNO:=@start_with, @level:=0) vars
          JOIN t_board
         WHERE @articleNO IS NOT NULL) fnc
  JOIN t_board tb ON fnc.level = tb.articleNO;