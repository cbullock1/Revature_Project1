CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUserTypeTransactions`(IN UEmail char(50), IN stat ENUM('Pending', 'Approved', 'Rejected'))
BEGIN
		SELECT * FROM transactions where employeeEmail = UEmail AND status = stat;
    
END