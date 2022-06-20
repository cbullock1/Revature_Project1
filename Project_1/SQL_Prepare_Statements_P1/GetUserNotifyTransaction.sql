CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUserNotifyTransactions`(IN UEmail char(50), IN note ENUM('Not Notified', 'Notified'))
BEGIN
	
SELECT * FROM transactions where employeeEmail = UEmail AND notify = note AND status != "PENDING";

    
END