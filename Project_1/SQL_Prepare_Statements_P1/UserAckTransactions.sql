CREATE DEFINER=`root`@`localhost` PROCEDURE `UserAckTransactions`(IN UEmail char(50), IN tID integer)
BEGIN
	IF EXISTS (SELECT * FROM transactions where employeeEmail = UEmail AND TransactionID = tID AND status != "Pending")
    then
		UPDATE transactions set notify = "Notified" Where TransactionID = tID;
        end if;
    
END