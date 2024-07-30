DROP PROCEDURE IF EXISTS evenNumbers;

DELIMITER $$ -- //
CREATE PROCEDURE evenNumbers()
BEGIN
	DECLARE startNum INT DEFAULT 1; 
    DECLARE finishNum INT DEFAULT 10;
    DECLARE countNum INT DEFAULT startNum;
    DECLARE result VARCHAR(255) DEFAULT '';
    
	WHILE countNum <= finishNum DO
		IF countNum % 2 = 0 THEN
			SET result = CONCAT (result, countNum,' ');
		END IF;
		SET countNum = countNum + 1;
	END WHILE;

	SELECT result;

END $$ -- //
DELIMITER ;

CALL evenNumbers();