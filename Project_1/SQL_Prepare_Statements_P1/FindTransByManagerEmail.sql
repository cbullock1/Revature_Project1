CREATE DEFINER=`root`@`localhost` PROCEDURE `FindTransByManagerEmail`(IN Email char(50))
BEGIN
	IF EXISTS (SELECT * FROM transactions where managerEmail LIKE concat("%",Email,"%"))
    then
		SELECT * FROM transactions where managerEmail LIKE concat("%",Email,"%");
        end if;
    
END