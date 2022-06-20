CREATE DEFINER=`root`@`localhost` PROCEDURE `FindTransByEmployeeEmail`(IN Email char(50))
BEGIN
	IF EXISTS (SELECT * FROM transactions where employeeEmail LIKE concat("%",Email,"%"))
    then
		SELECT * FROM transactions where employeeEmail LIKE concat("%",Email,"%");
        end if;
    
END