USE servletex;
SELECT function_hierarchical() AS articleNO, @LEVEL AS LEVEL, title, content, id, writeDate
FROM (SELECT @start_with:=0, @articleNO:=@start_with, @LEVEL:=0) tbl JOIN t_board;