CREATE DEFINER=`root`@`localhost` PROCEDURE `RegisterForSite`(IN lastN char(50), IN firstN char(50) , IN em char(50), IN pass varchar(200))
BEGIN
	Insert into users (LastName, FirstName, Email, passcode, accountType) VALUES (lastN, firstN, em, sha2(pass,224), 'Employee');
END