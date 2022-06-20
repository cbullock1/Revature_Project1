CREATE DEFINER=`root`@`localhost` PROCEDURE `Login`(IN em char(50), IN pass varchar(200))
BEGIN
	
	SELECT * FROM users WHERE Email = em AND passcode = sha2(pass,224);

END