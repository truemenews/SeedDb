DROP PROCEDURE IF EXISTS InsertPersonData;

DELIMITER //  
CREATE PROCEDURE InsertPersonData()   
BEGIN
DECLARE i INT DEFAULT 0;
DECLARE test TEXT DEFAULT 'Test';

DECLARE ID INT DEFAULT 0;
DECLARE LASTNAME TEXT DEFAULT 'YoutubeTrueMe';
DECLARE FIRSTNAME text DEFAULT 'TrueMe';
DECLARE ADDRESS TEXT DEFAULT 'DVB Str, Truong Tho, Thu Duc';
DECLARE CITY TEXT DEFAULT 'SAI GON';

WHILE (i <= 1000000) DO
     SET ID = i+ 1;
     SET LASTNAME = CONCAT('YoutubeTrueMe', '-', i);
     SET FIRSTNAME = CONCAT('TrueMe', '-', i);
     SET ADDRESS = CONCAT('No. ', i, ' ', 'DVB Str, Truong Tho, Thu Duc');
     SET CITY = CONCAT('Sai Gon', '-', i);

   INSERT INTO `person` (
		`id`, `last_name`, `first_name`, `address`, `city`
		) 
	VALUES (
		ID, LASTNAME, FIRSTNAME, ADDRESS, CITY
	);
    SET i = i+1;
END WHILE;
END;
//  

CALL InsertPersonData(); 