DELIMITER $$ -- //

CREATE FUNCTION numberInTime (num INT)
RETURNS varchar(255)
BEGIN
	DECLARE n INT DEFAULT 0;
	DECLARE days INT DEFAULT 0;
	DECLARE hours INT DEFAULT 0;
	DECLARE minutes INT DEFAULT 0;
	DECLARE seconds INT DEFAULT 0;
	DECLARE res VARCHAR(255);

	IF num >= 0 THEN
		IF num > 0 THEN
			SET n = num;
			SET days = n / (24 * 3600);
			SET n = n % (24 * 3600);
			SET hours = n / 3600;
			SET n = n % 3600;
			SET minutes = n / 60;
			SET n = n % 60;
			SET seconds = n;
		END IF;
		SET res = CONCAT (days, ' Days ', hours, ' Hours ', minutes, ' Minutes ', seconds, ' Seconds');
	ELSE
		SET res = 'Sorri. This number < 0';
	END IF;
	RETURN res;
END $$ -- //
DELIMITER ;
SELECT numberInTime(123456);