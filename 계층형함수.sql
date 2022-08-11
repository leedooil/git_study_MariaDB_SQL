USE servletex;
DELIMITER //
CREATE FUNCTION function_hierarchical() RETURNS INT
NOT DETERMINISTIC
READS SQL DATA
BEGIN
	DECLARE v_articleNO INT;
	DECLARE v_parentNO INT;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET @articleNO = NULL;
	SET v_parentNO = @articleNO;
	SET v_articleNO = -1;
	if @articleNO IS NULL then
		RETURN NULL;
	END if;
	loop
	SELECT MIN(articleNO) INTO @articleNO
	FROM t_board WHERE parentNO = v_parentNO AND articleNO > v_articleNO;
	if (@articleNO IS NOT NULL) OR (v_parentNO = @start_with) then
		SET @LEVEL = @LEVEL + 1;
		RETURN @articleNO;
	END if;
	SET @LEVEL := @LEVEL -1;
	SELECT articleNO, parentNO INTO v_articleNO, v_parentNO
	FROM t_board WHERE articleNO = v_parentNO;
	END loop;
END //
DELIMITER ;			